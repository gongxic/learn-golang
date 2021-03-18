package main

import (
	"net/http"

	"fmt"
)

func main() {

	b :=12
	fmt.Println(b)


	http.HandleFunc("/zc", hello)

	http.ListenAndServe(":8084", nil)

}

func hello(w http.ResponseWriter, r *http.Request) {

	fmt.Fprintf(w, "Hello Docker Form Golang!")

}
