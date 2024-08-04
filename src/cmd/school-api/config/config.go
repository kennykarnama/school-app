package config

import "github.com/kelseyhightower/envconfig"

type Spec struct {
	HttpAddr string `envconfig:"HTTP_ADDR" required:"true"`
	DSN      string `envconfig:"DSN" required:"true"`
}

func Get() Spec {
	s := Spec{}
	envconfig.MustProcess("school", &s)

	return s

}
