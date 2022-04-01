// ====------ Memory_api_test34.cu---------- *- CUDA -* ----===////
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//
// ===----------------------------------------------------------------------===//

// RUN: dpct --format-range=none  --usm-level=none  --use-custom-helper=api -out-root %T/Memory/api_test34_out %s --cuda-include-path="%cuda-path/include" -- -x cuda --cuda-host-only
// RUN: grep "IsCalled" %T/Memory/api_test34_out/MainSourceFiles.yaml | wc -l > %T/Memory/api_test34_out/count.txt
// RUN: FileCheck --input-file %T/Memory/api_test34_out/count.txt --match-full-lines %s
// RUN: rm -rf %T/Memory/api_test34_out

// CHECK: 27
// TEST_FEATURE: Memory_async_dpct_memcpy

int main() {
  float constData[1234567 * 4];
  float* h_A;
  cudaMemcpyToSymbolAsync(constData, h_A, 10, 1, cudaMemcpyHostToDevice);
  return 0;
}
