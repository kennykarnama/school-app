package ptr

type Value interface {
	int | float64 | string | int32
}

func ValueToPointer[V Value](v V) *V {
	return &v
}

func ToStr(s *string) string {
	if s == nil {
		return ""
	}

	return *s
}

func ToFloat32(f *float32) float32 {
	if f == nil {
		return 0
	}

	return *f
}

func ToFloat64(f *float64) float64 {
	if f == nil {
		return 0
	}

	return float64(*f)
}
