#!/bin/bash 

build() {
  pandoc content/*.md --from markdown+smart --template "./template.tex" --listings -o "document.pdf" --filter pandoc-plantuml --metadata-file metadata.yaml
}

build_watch() {
  inotifywait -r -q -m -e close_write,moved_to,create,delete,delete_self . |
  while read -r directory events filename; do
    if [[ ( "$filename" =~ .*md$ && -f "./content/$filename" ) || "$filename" = metadata.yaml ]]; then
      echo "$filename changed, rebuild document"
      build
    fi
  done
}

if [ "$1" = "--watch" ]; then
  build
  build_watch
else
  build
fi

