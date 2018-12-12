#!/bin/bash
for dockerfile in Dockerfile-*; do
	version=${dockerfile#Dockerfile-}
	docker build -f $dockerfile -t ashutosh108/dev:$version .
done
