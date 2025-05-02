#!/bin/bash

jq '.[] | select(.available == true and .copies >= 2) | "\(.title) by \(.author)"' scripts/library.json
