#!/usr/bin/env bats

@test "fails invoking missing subcommand" {
  run yerun does-not-exist
  [[ "${status}" == 1 ]]
}

@test "-h prints usage" {
  run yerun -h
  [[ "${status}" == 0 ]]
  [[ "${output}" =~ "USAGE" ]]
}
