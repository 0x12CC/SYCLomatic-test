# ====------ do_test.py---------- *- Python -* ----===##
#
# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#
#
# ===----------------------------------------------------------------------===#
import subprocess
import platform
import os
import sys

from test_utils import *

def setup_test():
    change_dir(test_config.current_test)
    return True

def migrate_test():
    call_subprocess(test_config.CT_TOOL + " test.cu --out-root out --usm-level=none --cuda-include-path=" + test_config.include_path)
    return call_subprocess(test_config.CT_TOOL + " test.cu --out-root out --no-incremental-migration --cuda-include-path=" + test_config.include_path)

def build_test():
    return True

def run_test():
    return True