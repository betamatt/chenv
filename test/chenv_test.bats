#!/usr/bin/env bats
load test_helper

@test "CHENV_SOURCE should be set to absolute path of script" {
  put "CHENV_SOURCE = $CHENV_SOURCE"
  [ "$CHENV_SOURCE" == "$(pwd)/chenv" ]
}
