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
	err := c.Bind(&req)
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
		Label: &ay.Label,
	}

	c.JSON(http.StatusCreated, ayOut)

}

func (h *HttpHandler) RecordAttendance(c *gin.Context, ayid string, cid string) {

}

// Register a new student
// (POST /students)
func (h *HttpHandler) RegisterStudentRegisterStudent(c *gin.Context) {}

// get student
// (GET /students/{id})
func (h *HttpHandler) GetStudentGetStudent(c *gin.Context, id string) {}

// Patch student
// (PATCH /students/{id})
func (h *HttpHandler) PatchStudentPatchStudent(c *gin.Context, id string) {}

// Create new student's relation
// (POST /students/{id}/relations)
func (h *HttpHandler) CreateStudentRelationCreateStudentRelation(c *gin.Context, id string) {}

// Register a new teacher
// (POST /teachers)
func (h *HttpHandler) RegisterTeacher(c *gin.Context) {}

// Register a new user
// (POST /users)
func (h *HttpHandler) RegisterUser(c *gin.Context) {}

// Login using credentials
// (POST /users/login)
func (h *HttpHandler) AuthenticateUser(c *gin.Context) {}
