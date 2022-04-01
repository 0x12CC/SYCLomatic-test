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
from test_config import CT_TOOL

from test_utils import *

def setup_test():
    change_dir(test_config.current_test)
    return True

def migrate_test():

    call_subprocess(test_config.CT_TOOL +" --out-root=out --cuda-include-path=" + test_config.include_path +
        " t.c t.cpp t.cu")
    # return is_sub_string("Migration not necessary", test_config.command_output)

    if os.path.exists(os.path.join("out", "t.c")) or os.path.exists(os.path.join("out", "t.cpp")) or \
            os.path.exists(os.path.join("out", "t.dp.cpp")):
        return True
    return False

def build_test():
    return True

def run_test():
    return True