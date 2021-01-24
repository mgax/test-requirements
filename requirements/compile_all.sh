#!/bin/bash

set -euo pipefail
set -x

pip-compile nlp.in
pip-compile base.in
pip-compile dev.in
pip-compile tests.in
pip-compile prod.in
pip-compile docs.in
