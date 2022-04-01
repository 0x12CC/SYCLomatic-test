// ====------ Memory_api_test17.cu---------- *- CUDA -* ----===////
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//
// ===----------------------------------------------------------------------===//

// RUN: dpct --format-range=none  --use-custom-helper=api -out-root %T/Memory/api_test17_out %s --cuda-include-path="%cuda-path/include" -- -x cuda --cuda-host-only
// RUN: grep "IsCalled" %T/Memory/api_test17_out/MainSourceFiles.yaml | wc -l > %T/Memory/api_test17_out/count.txt
// RUN: FileCheck --input-file %T/Memory/api_test17_out/count.txt --match-full-lines %s
// RUN: rm -rf %T/Memory/api_test17_out

// CHECK: 39
// TEST_FEATURE: Memory_constant_memory_alias

__constant__ float A[1024];

int main() {
  return 0;
}
