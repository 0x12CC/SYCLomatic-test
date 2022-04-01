// ====------ cublasBatch.cu---------- *- CUDA -* ----===////
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//
// ===----------------------------------------------------------------------===//

#include <cstdio>
#include <cublas_v2.h>
#include <cuda_runtime.h>
int main() {
  cublasStatus_t status;
  cublasHandle_t handle;
  int n = 275;
  int m = 275;
  int nrhs = 275;
  int lda = 275;
  int ldb = 275;
  int ldc = 275;

  float **Aarray_S = 0;
  double **Aarray_D = 0;
  cuComplex **Aarray_C = 0;
  cuDoubleComplex **Aarray_Z = 0;

  float **Barray_S = 0;
  double **Barray_D = 0;
  cuComplex **Barray_C = 0;
  cuDoubleComplex **Barray_Z = 0;

  float **Carray_S = 0;
  double **Carray_D = 0;
  cuComplex **Carray_C = 0;
  cuDoubleComplex **Carray_Z = 0;

  float **TauArray_S = 0;
  double **TauArray_D = 0;
  cuComplex **TauArray_C = 0;
  cuDoubleComplex **TauArray_Z = 0;

  int *PivotArray = 0;
  int *infoArray = 0;
  int batchSize = 10;

  int trans0 = 0;
  int trans1 = 1;
  int trans2 = 2;

  const float **Aarray_Sc = 0;
  const double **Aarray_Dc = 0;
  const cuComplex **Aarray_Cc = 0;
  const cuDoubleComplex **Aarray_Zc = 0;

  // getrf_batch
  status = cublasSgetrfBatched(handle, n, Aarray_S, lda, PivotArray, infoArray, batchSize);
  cublasSgetrfBatched(handle, n, Aarray_S, lda, PivotArray, infoArray, batchSize);

  status = cublasDgetrfBatched(handle, n, Aarray_D, lda, PivotArray, infoArray, batchSize);
  cublasDgetrfBatched(handle, n, Aarray_D, lda, PivotArray, infoArray, batchSize);

  status = cublasCgetrfBatched(handle, n, Aarray_C, lda, PivotArray, infoArray, batchSize);
  cublasCgetrfBatched(handle, n, Aarray_C, lda, PivotArray, infoArray, batchSize);

  status = cublasZgetrfBatched(handle, n, Aarray_Z, lda, PivotArray, infoArray, batchSize);
  cublasZgetrfBatched(handle, n, Aarray_Z, lda, PivotArray, infoArray, batchSize);

  // getrs_batch
  status = cublasSgetrsBatched(handle, (cublasOperation_t)trans0, n, nrhs, Aarray_Sc, lda, PivotArray, Barray_S, ldb, infoArray, batchSize);
  cublasSgetrsBatched(handle, CUBLAS_OP_N, n, nrhs, Aarray_Sc, lda, PivotArray, Barray_S, ldb, infoArray, batchSize);

  status = cublasDgetrsBatched(handle, (cublasOperation_t)trans1, n, nrhs, Aarray_Dc, lda, PivotArray, Barray_D, ldb, infoArray, batchSize);
  cublasDgetrsBatched(handle, CUBLAS_OP_N, n, nrhs, Aarray_Dc, lda, PivotArray, Barray_D, ldb, infoArray, batchSize);

  status = cublasCgetrsBatched(handle, (cublasOperation_t)trans2, n, nrhs, Aarray_Cc, lda, PivotArray, Barray_C, ldb, infoArray, batchSize);
  cublasCgetrsBatched(handle, CUBLAS_OP_N, n, nrhs, Aarray_Cc, lda, PivotArray, Barray_C, ldb, infoArray, batchSize);

  status = cublasZgetrsBatched(handle, (cublasOperation_t)2, n, nrhs, Aarray_Zc, lda, PivotArray, Barray_Z, ldb, infoArray, batchSize);
  cublasZgetrsBatched(handle, CUBLAS_OP_N, n, nrhs, Aarray_Zc, lda, PivotArray, Barray_Z, ldb, infoArray, batchSize);

  // getri_batch
  status = cublasSgetriBatched(handle, n, Aarray_Sc, lda, PivotArray, Carray_S, ldc, infoArray, batchSize);
  cublasSgetriBatched(handle, n, Aarray_Sc, lda, PivotArray, Carray_S, ldc, infoArray, batchSize);

  status = cublasDgetriBatched(handle, n, Aarray_Dc, lda, PivotArray, Carray_D, ldc, infoArray, batchSize);
  cublasDgetriBatched(handle, n, Aarray_Dc, lda, PivotArray, Carray_D, ldc, infoArray, batchSize);

  status = cublasCgetriBatched(handle, n, Aarray_Cc, lda, PivotArray, Carray_C, ldc, infoArray, batchSize);
  cublasCgetriBatched(handle, n, Aarray_Cc, lda, PivotArray, Carray_C, ldc, infoArray, batchSize);

  status = cublasZgetriBatched(handle, n, Aarray_Zc, lda, PivotArray, Carray_Z, ldc, infoArray, batchSize);
  cublasZgetriBatched(handle, n, Aarray_Zc, lda, PivotArray, Carray_Z, ldc, infoArray, batchSize);

  // geqrf_batch
  status = cublasSgeqrfBatched(handle, m, n, Aarray_S, lda, TauArray_S, infoArray, batchSize);
  cublasSgeqrfBatched(handle, m, n, Aarray_S, lda, TauArray_S, infoArray, batchSize);

  status = cublasDgeqrfBatched(handle, m, n, Aarray_D, lda, TauArray_D, infoArray, batchSize);
  cublasDgeqrfBatched(handle, m, n, Aarray_D, lda, TauArray_D, infoArray, batchSize);

  status = cublasCgeqrfBatched(handle, m, n, Aarray_C, lda, TauArray_C, infoArray, batchSize);
  cublasCgeqrfBatched(handle, m, n, Aarray_C, lda, TauArray_C, infoArray, batchSize);

  status = cublasZgeqrfBatched(handle, m, n, Aarray_Z, lda, TauArray_Z, infoArray, batchSize);
  cublasZgeqrfBatched(handle, m, n, Aarray_Z, lda, TauArray_Z, infoArray, batchSize);

  return 0;
}
