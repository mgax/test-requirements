#!/bin/bash

set -euo pipefail
set -x

pip-compile -U requirements.in
