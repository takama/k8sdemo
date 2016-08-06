package datastore

type Book struct {
	ID     int
	Isbn   string
	Title  string
	Author string
}

type DB interface {
	AllBooks() ([]Book, error)
}

func New(dataSourceName string) (DB, error) {
	return newMySQL(dataSourceName)
}
