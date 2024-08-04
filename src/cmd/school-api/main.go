package main

import (
	"context"
	"log"
	"log/slog"
	"net/http"
	"time"

	"github.com/gin-gonic/gin"
	genapi "github.com/kennykarnama/school-app/api/openapi"
	"github.com/kennykarnama/school-app/src/administration/adapter"
	"github.com/kennykarnama/school-app/src/administration/app"
	"github.com/kennykarnama/school-app/src/administration/port"
	"github.com/kennykarnama/school-app/src/cmd/school-api/config"
)

func main() {
	cfg := config.Get()
	ctx := context.Background()

	academicRepo, err := adapter.NewAcademicYearRepo(ctx, cfg.DSN)
	if err != nil {
		log.Fatal(err)
	}
	academicManager := app.NewAcademicYearManager(academicRepo)

	administrationHandler := port.NewHttpHandler(academicManager)

	r := gin.Default()

	genapi.RegisterHandlers(r, administrationHandler)

	log.Printf("serving http on port %s", cfg.HttpAddr)

	srv := &http.Server{
		Addr:              cfg.HttpAddr,
		Handler:           r.Handler(),
		ReadHeaderTimeout: 20 * time.Second,
	}

	if err := srv.ListenAndServe(); err != nil && err != http.ErrServerClosed {
		slog.Error("listen.http.server", slog.Any("err", err))
	}
}
