#!/bin/bash

jq '.[] | select(.tags != null and (.tags | contains(["philosophy", "cosmology"] | .[]))) | "\(.title) by \(.author)"' scripts/library.json
