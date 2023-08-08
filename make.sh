#!/bin/sh

packages=(
    'os'
    'io'
    'fmt'
    'encoding/json'
    'database/sql'
    'net/http'
    'encoding'
    'builtin'
    'runtime'
    'math/rand'
    'sort'
    'net'
    'image'
    'image/color'
    'image/draw'
    'hash'
    'crypto'
    'reflect'

)

if [ -z "${GOROOT}" ]
then
    eval $(go env | grep -e '^GOROOT=')
fi

if [ -z "${GOROOT}" ]
then
    echo 'Cannot find GOROOT'
    exit 1
fi

go_version=$(go version)
go_branch=${go_version#go version }
go_branch=${go_branch% *}

case ${go_branch} in
go[0-9].[0-9])
    ;;
go[0-9].[0-9].[0-9])
    go_branch=${go_branch%.[0-9]}
    ;;
go[0-9].[0-9][0-9].[0-9])
    go_branch=${go_branch%.*}
    ;;
*)
    printf 'Unexpected go version: %s\n' ${go_version}
    exit 2
    ;;
esac

echo '# Go (Golang) Standard Library Interfaces (Selected)'
echo
echo "This is not an exhaustive list of all interfaces in Go's standard library."
echo 'I only list those I think are important.'
echo 'Interfaces defined in frequently used packages (like `io`, `fmt`) are included.'
echo 'Interfaces that have significant importance are also included.'
echo
printf 'All of the following information is based on `%s`.\n' "$(go version)"

for package in ${packages[@]}
do
    find ${GOROOT}/src/${package} -maxdepth 1 \
        -type f '(' \
            -name '*_test.go' -prune -o \
            -name '*.go' -exec \
                awk -f iface.awk -v package="${package}" -v branch="${go_branch}" '{}' '+' \
        ')'
done

printf '\n'
printf '\n'
printf '\n'
printf '\n'
printf '\n'
printf '## Source\n'
printf '\n'

printf '### iface.awk\n'
printf '\n'
printf '```awk\n'
cat iface.awk
printf '```\n'
printf '\n'

printf '### make.sh\n'
printf '\n'
printf '```sh\n'
cat make.sh
printf '```\n'
