package main

import (
	"fmt"
	"io/ioutil"
	"os"
	"regexp"
	"strings"
)

var versionPattern *regexp.Regexp
var urlPattern *regexp.Regexp
var sha256Pattern *regexp.Regexp

func init() {
	versionPattern = regexp.MustCompile(`version\s+"([0-9.]+)"`)
	urlPattern = regexp.MustCompile(`url\s+"(.*)"`)
	sha256Pattern = regexp.MustCompile(`sha256\s+"([0-9a-zA-Z]+)"`)
}

func main() {
	args := os.Args
	if len(args) != 5 {
		fmt.Printf("Expected 4 arguments but received %d\n", len(args)-1)
		os.Exit(1)
	}

	version := args[1]
	url := args[2]
	sha256 := args[3]
	rubyFilePath := args[4]

	file, err := os.Open(rubyFilePath)
	if err != nil {
		fmt.Printf("failed reading file: %s\n", err)
	}
	defer file.Close()

	content, err := ioutil.ReadAll(file)
	if err != nil {
		fmt.Printf("Could not open file %s: %s\n", rubyFilePath, err)
		os.Exit(1)
	}

	var modifiedLines []string
	lines := strings.Split(string(content), "\n")
	for _, l := range lines {

		if versionPattern.MatchString(l) {
			match := versionPattern.FindStringSubmatch(l)
			subbed := strings.Replace(l, match[1], version, -1)
			modifiedLines = append(modifiedLines, subbed)
			continue
		}

		if urlPattern.MatchString(l) {
			match := urlPattern.FindStringSubmatch(l)
			subbed := strings.Replace(l, match[1], url, -1)
			modifiedLines = append(modifiedLines, subbed)
			continue
		}

		if sha256Pattern.MatchString(l) {
			match := sha256Pattern.FindStringSubmatch(l)
			subbed := strings.Replace(l, match[1], sha256, -1)
			modifiedLines = append(modifiedLines, subbed)
			continue
		}

		modifiedLines = append(modifiedLines, l)
	}

	for _, l := range modifiedLines {
		fmt.Println(l)
	}

}
