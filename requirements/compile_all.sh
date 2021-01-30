#!/bin/bash

set -euo pipefail
set -x

pip-compile -U requirements.in
pip-compile -U dev.in
