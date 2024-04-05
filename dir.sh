#!/bin/bash

echo "Files with read, write, and execute permissions:"
ls -l | grep "^-rwx"
