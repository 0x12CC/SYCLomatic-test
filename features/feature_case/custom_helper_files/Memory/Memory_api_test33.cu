// ====------ Memory_api_test33.cu---------- *- CUDA -* ----===////
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//
// ===----------------------------------------------------------------------===//

// RUN: dpct --format-range=none  --usm-level=none  --use-custom-helper=api -out-root %T/Memory/api_test33_out %s --cuda-include-path="%cuda-path/include" -- -x cuda --cuda-host-only
// RUN: grep "IsCalled" %T/Memory/api_test33_out/MainSourceFiles.yaml | wc -l > %T/Memory/api_test33_out/count.txt
// RUN: FileCheck --input-file %T/Memory/api_test33_out/count.txt --match-full-lines %s
// RUN: rm -rf %T/Memory/api_test33_out

// CHECK: 27
// TEST_FEATURE: Memory_get_access

__global__ void foo(float* f) {}

int main() {
  float* f;
  cudaMalloc(&f, 8);
  foo<<<1, 1>>>(f);
  return 0;
}
