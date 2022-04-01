// ====------ BlasUtils_api_test2.cu---------- *- CUDA -* ----===////
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//
// ===----------------------------------------------------------------------===//

// UNSUPPORTED: v11.0, v11.1, v11.2, v11.3, v11.4
// UNSUPPORTED: cuda-11.0, cuda-11.1, cuda-11.2, cuda-11.3, cuda-11.4
// RUN: dpct --format-range=none  --use-custom-helper=api -out-root %T/BlasUtils/api_test2_out %s --cuda-include-path="%cuda-path/include" -- -x cuda --cuda-host-only
// RUN: grep "IsCalled" %T/BlasUtils/api_test2_out/MainSourceFiles.yaml | wc -l > %T/BlasUtils/api_test2_out/count.txt
// RUN: FileCheck --input-file %T/BlasUtils/api_test2_out/count.txt --match-full-lines %s
// RUN: rm -rf %T/BlasUtils/api_test2_out

// CHECK: 6

// TEST_FEATURE: BlasUtils_get_transpose

#include "cusparse_v2.h"

int main() {
  cusparseHandle_t handle;
  cusparseMatDescr_t descrA;
  double alpha;
  const double* csrValA;
  const int* csrRowPtrA;
  const int* csrColIndA;
  const double* x;
  double beta;
  double* y;
  int aaaaa = 0;
  cusparseDcsrmv(handle, (cusparseOperation_t)aaaaa, 2, 2, 2, &alpha, descrA, csrValA, csrRowPtrA, csrColIndA, x, &beta, y);
  return 0;
}
