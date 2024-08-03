package enums

type Gender string

const (
	MaleGender   Gender = "MALE"
	FemaleGender Gender = "FEMALE"
)

func ListGenders() []Gender {
	return []Gender{
		MaleGender,
		FemaleGender,
	}
}
