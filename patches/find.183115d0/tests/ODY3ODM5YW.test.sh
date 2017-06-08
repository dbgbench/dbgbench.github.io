#! /bin/sh
versiondir=$1
# Copyright (C) 2013 Free Software Foundation, Inc.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

# This test verifies that find does not leak a file descriptor for the working
# directory specified by the -execdir option [Savannah bug #34976].

#testname="$(basename $0)"

#. "${srcdir}"/binary_locations.sh

# seq is not required by POSIX, so we have manual lists of number here instead.
three_to_thirty_five="3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35"
three_to_hundred=$(seq 3 500)

# Test if restricting the number of file descriptors via ulimit -n works.
# We always try to open 33 files (but the ulimit -n value changes).
test_ulimit() {
  l="$1"  # limit to use
  (
    ulimit -n "$l" || exit 1
    for i in ${three_to_thirty_five} ; do
      printf "exec %d> /dev/null || exit 1\n" $i
    done | sh -x ;
  ) 2>/dev/null
}
# Opening 33 files with a limit of 50 should work.
#test_ulimit 40 || { echo "SKIP: ulimit does not work (case 1)" >&2; exit 0 ; }
# Opening 33 files with a limit of 20 should fail.
test_ulimit 20 && { echo "SKIP: ulimit does not work (case 2)" >&2; exit 0 ; }

die() {
  echo "$@" >&2
  exit 1
}

# Create test files, each 98 in the directories ".", "one" and "two".
make_test_data() {
  d="$1"
  (
    cd "$1" || exit 1
    mkdir one two || exit 1
    for i in ${three_to_hundred} ; do
      printf "./%03d one/%03d two/%03d " $i $i $i
    done \
      | xargs touch || exit 1
  ) \
  || die "failed to set up the test in ${outdir}"
}

outdir="$(mktemp -d)" || die "FAIL: could not create a test files."

# Create some test files.
make_test_data "${outdir}" || die "FAIL: failed to set up the test in ${outdir}"

fail=0
for exe in "$versiondir/find/find" "$versiondir/find/oldfind"; do
  ( ulimit -n 30 && \
    ${exe} "${outdir}"  -type f -execdir cat '{}' \; >/dev/null; ) \
  || { \
    echo "Option -execdir of ${exe} leaks file descriptors" >&2 ; \
    fail=1 ; \
  }
done

rm -rf "${outdir}" || exit 1
exit $fail
