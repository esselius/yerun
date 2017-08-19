#!/usr/bin/env bats

@test "fails invoking missing subcommand" {
  run yerun does-not-exist
  [[ "${status}" != 0 ]]
}
