package domain

import (
	"context"
	"errors"
	"time"
)

type SessionKey string

const (
	UserSessionCtxKey SessionKey = "USER_SESSION_KEY"
)

var (
	ErrCtxSessionNotExist          = errors.New("user session not exist in context")
	ErrCtxSessionValueNotParseable = errors.New("user session value is not parseable")
)

type UserSession struct {
	Id        string
	UserId    string // reference to teacher.id
	Token     string
	Ttl       int
	CreatedAt time.Time
}

func (us *UserSession) NewCtx(ctx context.Context) context.Context {
	return context.WithValue(ctx, UserSessionCtxKey, *us)
}

func NewUserSessionFromCtx(ctx context.Context) (*UserSession, error) {
	v := ctx.Value(UserSessionCtxKey)
	if v == nil {
		return nil, ErrCtxSessionNotExist
	}
	userSession, ok := v.(UserSession)
	if !ok {
		return nil, ErrCtxSessionValueNotParseable
	}
	return &userSession, nil
}
