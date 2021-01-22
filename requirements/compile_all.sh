#!/bin/bash

set -euo pipefail
set -x

pip-compile nlp.in
pip-compile all.in
