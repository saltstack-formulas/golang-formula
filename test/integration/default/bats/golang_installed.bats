#!/usr/bin/env bats

@test "go binary is in our \$PATH" {
  command -v go
}

@test "go version is 1.7" {
  run go version
  [[ ${lines[0]} =~ "1.7" ]]
}

@test "assert \$GOROOT is correct" {
  run bash -c "go env | sed '7q;d' | grep 'GOROOT=\"/var/lib/golang\"'"
  [ ${status} = 1 ]
}

@test "verify debugging output is relevant and archive_hash is a 'known known'" {
  run bash -c "grep archive_hash /tmp/golang-formula.log"
  [ ${status} = 0 ]
  [[ ${lines[0]} =~ "702ad90f705365227e902b42d91dd1a40e48ca7f67a2f4b2fd052aaa4295cd95" ]]
}
