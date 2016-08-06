// Copyright 2016 Igor Dolzhikov. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import (
	"log"

	"webapp/server"
)

func main() {
	srv, err := server.Setup()
	if err != nil {
		log.Fatal(err)
	}

	err = srv.ListenAndServe()
	if err != nil {
		log.Fatal("Could not listen: ", err)
	}
}
