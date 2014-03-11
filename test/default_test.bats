#!/usr/bin/env bats
load test_helper

@test "Setting default should write to STORE/.default" {
  run chenv create test; put $output
  run chenv default test; put $output
  default=`cat $CHENV_STORE/.default`
  put "Default environment is $default"
  [ "$default" == "test" ]
}
