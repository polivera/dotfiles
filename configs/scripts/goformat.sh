#!/bin/bash

gofmt -w -d $1 && goimports -w $1

