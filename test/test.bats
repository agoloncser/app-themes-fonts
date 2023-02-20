#!/usr/bin/env bats


@test "Install fonts" {
  run make fonts
}
@test "Install themes" {
  run make themes
}
