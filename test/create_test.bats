#!/usr/bin/env bats
load test_helper

@test "Creating a new environment should create a file in the store" {
  run chenv create test
  ls -l ${CHENV_STORE} 1>&2
  [ -f ${CHENV_STORE}/test ]
}
