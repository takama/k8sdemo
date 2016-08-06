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
