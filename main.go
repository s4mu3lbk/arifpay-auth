package main

import (
	"log"

	"github.com/s4mu3lbk/arifpay-auth/cmd"
)

func main() {
	if err := cmd.RootCommand().Execute(); err != nil {
		log.Fatal(err)
	}
}
