#!/usr/bin/env bats

@test "fails invoking missing subcommand" {
  run yerun does-not-exist
  [[ "${status}" != 0 ]]
}

@test "prints help" {
  run yerun -h
  [[ "${status}" == 0 ]]
  [[ "${output}" =~ "Help" ]]
}
