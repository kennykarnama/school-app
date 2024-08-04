package generr

import (
	"fmt"
	"net/http"
)

type BaseErr struct {
	Code     string
	HttpCode int
	Message  string
}

func (c *BaseErr) Error() string {
	return fmt.Sprintf("error_code: %s http_code: %d message: %s", c.Code, c.HttpCode, c.Message)
}

func NewDuplicateErr(message string) error {
	d := &BaseErr{
		Code:     "API-409",
		HttpCode: http.StatusConflict,
		Message:  message,
	}

	return d
}

type UpstreamErr struct {
	BaseErr
	OriginalResp []byte
}
