# shellcheck shell=sh

var_is_set() { [ "${1+x}" = "x" ] && [ "${#1}" -gt "0" ]; }     # set and not null
var_is_unset() { [ -z "${1+x}" ]; }                             # unset
var_is_empty() { [ "${1+x}" = "x" ] && [ "${#1}" -eq "0" ]; }   # set and null
var_is_blank() { var_is_unset "${1}" || var_is_empty "${1}"; }  # unset, or set and null

die() {
  case "${-}" in
    (*i*) printf -- '\e[38;5;9m%s\e[m\n' "${0}: ${*}" >&2 ;;
    (*)   printf -- '%s' "${0}: ${*}" >&2 ;;
  esac
  exit 1
}
