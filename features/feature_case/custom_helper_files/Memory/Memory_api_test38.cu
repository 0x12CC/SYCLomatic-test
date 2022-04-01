// ====------ Memory_api_test38.cu---------- *- CUDA -* ----===////
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//
// ===----------------------------------------------------------------------===//

// RUN: dpct --format-range=none  --usm-level=none  --use-custom-helper=api -out-root %T/Memory/api_test38_out %s --cuda-include-path="%cuda-path/include" -- -x cuda --cuda-host-only
// RUN: grep "IsCalled" %T/Memory/api_test38_out/MainSourceFiles.yaml | wc -l > %T/Memory/api_test38_out/count.txt
// RUN: FileCheck --input-file %T/Memory/api_test38_out/count.txt --match-full-lines %s
// RUN: rm -rf %T/Memory/api_test38_out

// CHECK: 37
// TEST_FEATURE: Memory_async_dpct_memcpy
// TEST_FEATURE: Memory_async_dpct_memcpy_2d
// TEST_FEATURE: Memory_async_dpct_memcpy_3d

int main() {
  cudaMemcpy3DParms parms;
  cudaMemcpy3DAsync(&parms);
  return 0;
}
