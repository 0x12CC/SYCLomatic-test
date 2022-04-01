// ====------ DplExtrasVector_api_test2.cu---------- *- CUDA -* ----===////
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//
// ===----------------------------------------------------------------------===//

// UNSUPPORTED: cuda-8.0
// UNSUPPORTED: v8.0
// RUN: dpct --format-range=none  --use-custom-helper=api -out-root %T/DplExtrasVector/api_test2_out %s --cuda-include-path="%cuda-path/include" -- -x cuda --cuda-host-only -std=c++17
// RUN: grep "IsCalled" %T/DplExtrasVector/api_test2_out/MainSourceFiles.yaml | wc -l > %T/DplExtrasVector/api_test2_out/count.txt
// RUN: FileCheck --input-file %T/DplExtrasVector/api_test2_out/count.txt --match-full-lines %s
// RUN: rm -rf %T/DplExtrasVector/api_test2_out

// CHECK: 28
// TEST_FEATURE: DplExtrasVector_device_vector

#include <thrust/device_vector.h>

int main() {
  float* x;
  thrust::device_vector<float> d_x(x, x + 4);
  return 0;
}
