package port

import (
	"errors"
	"net/http"

	"github.com/gin-gonic/gin"
	genapi "github.com/kennykarnama/school-app/api/openapi"
	"github.com/kennykarnama/school-app/src/pkg/generr"
	"github.com/kennykarnama/school-app/src/pkg/ptr"
)

func GenErrToAPIErr(err error, c *gin.Context) {
	var genErr *generr.BaseErr

	if errors.As(err, &genErr) {
		g := genapi.ErrorResponse{
			ErrorCode:    &genErr.Code,
			ErrorMessage: &genErr.Message,
			HttpCode:     &genErr.HttpCode,
		}

		c.JSON(*g.HttpCode, g)

		return
	}

	c.JSON(http.StatusInternalServerError, &genapi.ErrorResponse{
		ErrorCode:    ptr.ValueToPointer("API-500"),
		ErrorMessage: ptr.ValueToPointer(err.Error()),
		HttpCode:     ptr.ValueToPointer(http.StatusInternalServerError),
	})
}
