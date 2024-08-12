#! /usr/bin/env bash

D="./dumps"                                             # relative folder for the dump
mkdir -p $D                                             # ensure it exists

i=0                                                     # initialize counter

OV=$D/000-overview.csv                                   # overview file
echo "" > $OV                                           # clear it for this run

IN="./urls.txt"                                         # the input file with urls
for url in $(cat $IN); do \                             # run over all url in the txt file
  i=$(( i + 1 ))                                        # - increment counter
  is=$(printf "%03d" $i)                                # - counter as string, formatted with leading zeros
  echo "$is,$i,$url,$(date --iso=seconds)" | tee -a $OV # - give progress feedback to user & into ov file
  DU=$D/$is                                             # - dump space for this url 
  mkdir -p $DU                                          # - ensure it exists
  rm -rf $DU/* i                                        # - clean up that folder prior to filling it
  echo "$url" > $DU/00-url-info.txt                     # - local info file per folder
  sema-get -o $DU/01-sema-got-content.ttl -t $DU $url   # - use sema get to discover structured content for url
done

