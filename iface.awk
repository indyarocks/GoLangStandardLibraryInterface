BEGIN {
    if (package == "") {
        print "error: package is not defined"
        exit 1
    }

    if (branch == "") {
        print "error: branch is not defined"
        exit 1
    }

    state = 0
    indent0 = 0
    indent1 = 0
    from_line = 0
    to_line = 0
    filename = ""
    type = ""
    code = ""

    printf "\n"
    printf "\n"
    printf "\n"
    if (package == "builtin") {
        printf "### (builtin)\n"
    } else {
        printf "### package `%s`\n", package
    }
}

# Start of type
/type ([A-Z][^ ]*|error) interface {/ {
    if (state == 0) {
        indent0 = index($0, "type ")
        if (indent0 == 1) {
            state = 1

            s = substr($0, indent0 + 5) # length("type ") == 5
            len = index(s, " ") - 1
            type = substr(s, 0, len)

            filename = FILENAME
            sub(/.*\//, "", filename)

            from_line = FNR
            code = ""
        } else {
            # >>> Uncomment this block to write an alert instead of skipping the code <<<
            # state = 1
            #
            # s = substr($0, indent0 + 5) # length("type ") == 5
            # len = index(s, " ") - 1
            # type = substr(s, 0, len)
            #
            # filename = FILENAME
            # sub(/.*\//, "", filename)
            #
            # from_line = FNR
            # code = ""
            #
            # printf "\n# type is not the first character: filename: %s line: %d\n\n", FILENAME, FNR
        }
    }
}

# Inside type
{
    if (state == 1) {
        line = $0
        # Remove comments
        sub(/[\t ]*\/\/.*/, "", line)
        # Remove trailing whitespaces
        sub(/[\t ]*$/, "", line)
        # Only print non-blank lines
        if (line != "") {
            code = code line "\n"
        }
    }
}

# End of type
/}/ {
    if (state == 1) {
        indent1 = index($0, "}")
        if (indent0 == indent1) {
            state = 0
            to_line = FNR
            printf "\n"
            printf "#### %s " \
                "[[doc](https://golang.org/pkg/%s/#%s)] " \
                "[[src1](https://golang.org/src/%s/%s#L%d)] " \
                "[[src2](https://github.com/golang/go/blob/release-branch.%s/src/%s/%s#L%d-L%d)]\n",
                type,
                package, type,
                package, filename, from_line,
                branch, package, filename, from_line, to_line
            printf "\n"
            printf "```go\n"
            printf "%s", code
            printf "```\n"
        }
    }
}
