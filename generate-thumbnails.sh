#!/usr/bin/env bash

SOURCE_FOLDER=$(realpath "./assets/gallery")
TARGET_FOLDER=$(realpath "./assets/thumbnails")

function thumbnail {
  TARGET_DIRNAME=`dirname "${1}"`

  mkdir -p "${TARGET_FOLDER}/${TARGET_DIRNAME}"
  echo "${1}"
  magick convert -define jpeg:size=200x200 -auto-orient -thumbnail "144x144^" -gravity center -extent 144x144 -strip -quality 50 "${SOURCE_FOLDER}/${1}" "${TARGET_FOLDER}/${1}"
}

export SOURCE_FOLDER
export TARGET_FOLDER
export -f thumbnail

cd "${SOURCE_FOLDER}"
find . -type f -print0 | xargs --no-run-if-empty -0 -n1 -P 8 bash -c 'thumbnail "$0"'
