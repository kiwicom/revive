#!/bin/bash

while ./revive -exclude vendor/... -formatter friendly -config .revive.toml ./...
do
	echo OK
done
