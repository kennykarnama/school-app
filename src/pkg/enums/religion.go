package enums

type Religion string

const (
	Islam     Religion = "ISLAM"
	Protestan Religion = "PROTESTAN"
	Katolik   Religion = "KATOLIK"
	Hindu     Religion = "HINDU"
	Buddha    Religion = "BUDDHA"
)

func ListReligions() []Religion {
	return []Religion{
		Islam,
		Protestan,
		Hindu,
		Buddha,
	}
}

func (r Religion) String() string {
	return string(r)
}

type Religions []Religion

func (rs Religions) String() []string {
	var results []string

	for _, item := range rs {
		results = append(results, string(item))
	}

	return results
}
