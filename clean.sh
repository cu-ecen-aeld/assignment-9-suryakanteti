#!/bin/bash

set -e

# Enter the buildroot directory
cd `dirname $0`
cd buildroot

# Run make distclean
make distclean
