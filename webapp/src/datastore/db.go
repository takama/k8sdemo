// Copyright 2016 Igor Dolzhikov. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

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
