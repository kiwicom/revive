#!/bin/bash

while rr record ./revive -exclude vendor/... -formatter friendly -config .revive.toml ./...
do
	echo OK
done
