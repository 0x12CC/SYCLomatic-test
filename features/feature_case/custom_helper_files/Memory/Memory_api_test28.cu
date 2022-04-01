// ====------ Memory_api_test28.cu---------- *- CUDA -* ----===////
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//
// ===----------------------------------------------------------------------===//

// RUN: dpct --format-range=none   --use-custom-helper=api -out-root %T/Memory/api_test28_out %s --cuda-include-path="%cuda-path/include" -- -x cuda --cuda-host-only
// RUN: grep "IsCalled" %T/Memory/api_test28_out/MainSourceFiles.yaml | wc -l > %T/Memory/api_test28_out/count.txt
// RUN: FileCheck --input-file %T/Memory/api_test28_out/count.txt --match-full-lines %s
// RUN: rm -rf %T/Memory/api_test28_out

// CHECK: 41
// TEST_FEATURE: Memory_device_memory_get_ptr

__constant__ float constData[4];

int main() {
  float* host;
  cudaMemcpyToSymbolAsync(constData, host, 1, 3, cudaMemcpyHostToDevice, 0);
  return 0;
}
