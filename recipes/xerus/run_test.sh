#!/bin/bash

set -e

VERSION=$(cat VERSION)

export PYTHONPATH=''

${PYTHON} <<EOF
import xerus
assert xerus.__version__ == "${VERSION}", xerus.__version__+" != ${VERSION}"
EOF

exit 0
