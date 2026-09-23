// Command agents-md-gen is a thin wrapper around the agents-md-gen npm
// package (https://www.npmjs.com/package/agents-md-gen). It exists so the
// tool is installable via `go install` for Go developers, without
// maintaining a second implementation of the stack-detection logic.
//
// It requires Node.js (specifically `npx`) to be installed.
package main

import (
	"fmt"
	"os"
	"os/exec"
)

func main() {
	npxPath, err := exec.LookPath("npx")
	if err != nil {
		fmt.Fprintln(os.Stderr, "agents-md-gen needs Node.js (for `npx`) to run the actual generator.")
		fmt.Fprintln(os.Stderr, "Install Node.js from https://nodejs.org, then re-run this command.")
		fmt.Fprintln(os.Stderr, "(This Go wrapper shells out to the npm package of the same name.)")
		os.Exit(1)
	}

	args := append([]string{"--yes", "agents-md-gen@latest"}, os.Args[1:]...)
	cmd := exec.Command(npxPath, args...)
	cmd.Stdin = os.Stdin
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr

	if err := cmd.Run(); err != nil {
		if exitErr, ok := err.(*exec.ExitError); ok {
			os.Exit(exitErr.ExitCode())
		}
		fmt.Fprintln(os.Stderr, "failed to run npx:", err)
		os.Exit(1)
	}
}
