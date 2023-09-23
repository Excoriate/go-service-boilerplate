package main

import (
	"os"
)

func main() {
	_ = os.Setenv("CLI_NAME", "go-service-boilerplate")
	_ = os.Setenv("ROOT_CMD_NAME", "go-service-boilerplate")
	cmd.Execute()
}
