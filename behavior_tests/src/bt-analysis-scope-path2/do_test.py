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
import shutil

from test_utils import *


def setup_test():
    cur_dir = os.path.join(os.getcwd(), test_config.current_test)
    if platform.system() == 'Windows':
        # windows current working directory might start with lowercased drive(e.g., "d:\path") in some cases
        # so make the drive symbol in cwd to be upper explicitly to avoid inconsistent paths.
        if cur_dir[1] == ":" and cur_dir[0].islower():
            cur_dir = cur_dir[0].upper() + cur_dir[1:]
    change_dir(cur_dir)
    return True


def migrate_test():
    # clean previous migration output
    if (os.path.exists("out")):
        shutil.rmtree("out")
    migrate_cmd = test_config.CT_TOOL + " --cuda-include-path=" + test_config.include_path + " " + os.path.join(
        "cuda",
        "call_device_func_outside.cu") + " --in-root=cuda" + " --out-root=out"
    # migrate with implicit --analysis-scope-path which defaults to --in-root
    call_subprocess(migrate_cmd)
    if (not os.path.exists(
            os.path.join("out", "call_device_func_outside.dp.cpp"))):
        return False

    # expect incremental migration with specified --analysis-scope-path which equals --in-root
    call_subprocess(migrate_cmd + " --analysis-scope-path=cuda")
    if (not os.path.exists(
            os.path.join("out", "call_device_func_outside.dp.cpp"))):
        return False

    # not expect incremental migration with specified --analysis-scope-path which is the parent of --in-root
    call_subprocess(migrate_cmd + " --analysis-scope-path=" +
                    os.path.join("cuda", ".."))
    return is_sub_string(
        f"use the same option set as in previous migration: \"--analysis-scope-path=",
        test_config.command_output)


def build_test():
    return True


def run_test():
    return True