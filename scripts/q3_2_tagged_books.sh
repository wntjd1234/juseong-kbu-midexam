#!/bin/bash

jq '.[] | select(.tags | contains(["philosophy", "cosmology"] | .[])) | "\(.title) by \(.author)"' scripts/library.json
