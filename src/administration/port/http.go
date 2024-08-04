package port

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/google/uuid"
	genapi "github.com/kennykarnama/school-app/api/openapi"
	"github.com/kennykarnama/school-app/src/administration/app"
)

type HttpHandler struct {
	academicManager *app.AcademicYearManager
}

func NewHttpHandler(academicYearManager *app.AcademicYearManager) *HttpHandler {
	return &HttpHandler{
		academicManager: academicYearManager,
	}
}

func (h *HttpHandler) ListAcademicYears(c *gin.Context) {
	ays, err := h.academicManager.List(c.Request.Context(), app.ListReq{})
	if err != nil {
		GenErrToAPIErr(err, c)

		return
	}

	ayOuts := []genapi.AcademicYear{}

	for _, ay := range ays.AcademicYears {
		uv, err := uuid.Parse(ay.ID)
		if err != nil {
			GenErrToAPIErr(err, c)

			return
		}
		ayOuts = append(ayOuts, genapi.AcademicYear{
			ID:    &uv,
			Label: &ay.Label,
		})
	}

	c.JSON(http.StatusOK, &genapi.ListAcademicYear{
		Items: &ayOuts,
	})
}

func (h *HttpHandler) PatchAcademicYears(c *gin.Context) {

}

func (h *HttpHandler) CreateAcademicYear(c *gin.Context) {
	var req genapi.CreateAcademicYearReq
	err := c.Bind(req)
	if err != nil {
		GenErrToAPIErr(err, c)

		return
	}

	res, err := h.academicManager.Create(c.Request.Context(), app.CreateReq{
		Label: *req.Label,
	})
	if err != nil {
		GenErrToAPIErr(err, c)

		return
	}

	ay := res.AcademicYear

	uv, err := uuid.Parse(ay.ID)
	if err != nil {
		GenErrToAPIErr(err, c)

		return
	}

	ayOut := genapi.AcademicYear{
		ID:    &uv,
		Label: new(string),
	}

	c.JSON(http.StatusCreated, ayOut)

}

func (h *HttpHandler) RecordAttendance(c *gin.Context, ayid string, cid string) {

}
