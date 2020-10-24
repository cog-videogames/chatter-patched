#!/bin/bash

# A very dumb release script, will look into auto-packaging later. Maybe.

gitDir="chatter-patched"
releaseDir="Chatter"
releasePrefix="Chatter-1.7.3-patched-"

# Various sanity checks

dir=$(basename "$(pwd)")

fatal(){
	echo "$1"; exit 2
}

if [[ "$dir" != "$gitDir" ]]; then
	fatal "Must run from $gitDir"
fi

releaseTag=$(git tag --points-at HEAD)

if [[ "$releaseTag" == "" ]]; then
	fatal "No git tag defined"
fi

cd ..

test -d "$releaseDir" && fatal "$releaseDir folder exists"

set -x

# Cut release

cp -r "$gitDir" "$releaseDir"
rm -rf "$releaseDir/.git" "$releaseDir/release.sh"
7z a -r "$releasePrefix$releaseTag.zip" "$releaseDir"
rm -rf "$releaseDir"
