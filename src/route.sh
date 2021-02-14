#!/bin/bash

# router(uri, path)
function router() {
	route+=("$1")
	route+=("$(sed -E 's/:[A-Za-z0-9]+/[A-Za-z0-9.,%:-_]+/g' <<< "$1")")
	route+=("$2")
}
