jq '.library.categories[].books[] | select(.available == true and .copies >= 2) | "\(.title) by \(.author)"' scripts/library.json
