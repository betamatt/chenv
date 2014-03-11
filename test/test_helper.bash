put() {
  echo $1 >&2
}

setup() {
  CHENV_STORE="${BATS_TMPDIR}/.chenv"
  unset CHENV_DEFAULT
  unset CHENV_CURRENT
  source chenv
}

teardown() {
  rm -rf $CHENV_STORE
}
