package main

import (
	"fmt"
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {

	r := gin.Default()
	r.GET("/ping", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "pong",
		})
	})

	r.GET("/zc", hello)
	r.Run() // listen and serve on 0.0.0.0:8080 (for windows "localhost:8080")

	b := 12
	fmt.Println(b)

}

func hello(c *gin.Context) {
	c.String(http.StatusOK, "Hello Docker Form Golang!")
}
