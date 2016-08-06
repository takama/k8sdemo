// Copyright 2016 Igor Dolzhikov. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package datastore

import (
	"database/sql"
	_ "github.com/go-sql-driver/mysql"
)

type MySQL struct {
	*sql.DB
}

func newMySQL(dataSourceName string) (*MySQL, error) {
	db, err := sql.Open("mysql", dataSourceName)
	if err != nil {
		return nil, err
	}
	return &MySQL{db}, nil
}

func (db *MySQL) AllBooks() ([]Book, error) {
	rows, err := db.Query("SELECT * FROM bookstore")
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	books := make([]Book, 0)
	for rows.Next() {
		book := Book{}
		err := rows.Scan(&book.ID, &book.Isbn, &book.Title, &book.Author)
		if err != nil {
			return nil, err
		}
		books = append(books, book)
	}
	if err = rows.Err(); err != nil {
		return nil, err
	}
	return books, nil
}
