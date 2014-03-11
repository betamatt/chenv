#!/usr/bin/env bats
load test_helper

@test "Using environment should source environment file" {
  string="ZIUHIUDSFKJN"
  echo "echo $string" > $CHENV_STORE/test

  run chenv use test; put $output
  put "Grep for string:"
  echo $output | grep $string 1>&2

  [ $? -eq 0 ]
}
