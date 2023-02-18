#!/usr/bin/env bats


@test "Install fonts" {
  run make fonts
  [ "$status" -eq 1 ]
  echo "$output"
}
@test "Install themes" {
  run make fonts
  [ "$status" -eq 1 ]
  echo "$output"
}
