// ====------ cufft-usm.cu---------- *- CUDA -* ----===////
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//
// ===----------------------------------------------------------------------===//

#include <cstdio>
#include <cufft.h>
#include <cuda_runtime.h>


int main() {
  cufftHandle plan_1d_C2C;
  float2* odata_1d_C2C;
  float2* idata_1d_C2C;

  cufftPlan1d(&plan_1d_C2C, 10, CUFFT_C2C, 3);

  cufftExecC2C(plan_1d_C2C, idata_1d_C2C, odata_1d_C2C, CUFFT_FORWARD);

  cufftHandle plan_1d_C2R;
  float* odata_1d_C2R;
  float2* idata_1d_C2R;

  cufftPlan1d(&plan_1d_C2R, 10, CUFFT_C2R, 3);

  cufftExecC2R(plan_1d_C2R, idata_1d_C2R, odata_1d_C2R);

  cufftHandle plan_1d_R2C;
  float2* odata_1d_R2C;
  float* idata_1d_R2C;

  cufftPlan1d(&plan_1d_R2C, 10, CUFFT_R2C, 3);

  cufftExecR2C(plan_1d_R2C, idata_1d_R2C, odata_1d_R2C);

  cufftHandle plan_1d_Z2Z;
  double2* odata_1d_Z2Z;
  double2* idata_1d_Z2Z;

  cufftPlan1d(&plan_1d_Z2Z, 10, CUFFT_Z2Z, 3);

  cufftExecZ2Z(plan_1d_Z2Z, idata_1d_Z2Z, odata_1d_Z2Z, CUFFT_INVERSE);

  cufftHandle plan_1d_Z2D;
  double* odata_1d_Z2D;
  double2* idata_1d_Z2D;

  cufftPlan1d(&plan_1d_Z2D, 10, CUFFT_Z2D, 3);

  cufftExecZ2D(plan_1d_Z2D, idata_1d_Z2D, odata_1d_Z2D);

  cufftHandle plan_1d_D2Z;
  double2* odata_1d_D2Z;
  double* idata_1d_D2Z;

  cufftPlan1d(&plan_1d_D2Z, 10, CUFFT_D2Z, 3);

  cufftExecD2Z(plan_1d_D2Z, idata_1d_D2Z, odata_1d_D2Z);

  cufftHandle plan_2d_C2C;
  float2* odata_2d_C2C;
  float2* idata_2d_C2C;

  cufftPlan2d(&plan_2d_C2C, 10, 20, CUFFT_C2C);

  cufftExecC2C(plan_2d_C2C, idata_2d_C2C, odata_2d_C2C, CUFFT_FORWARD);

  cufftHandle plan_2d_C2R;
  float* odata_2d_C2R;
  float2* idata_2d_C2R;

  cufftPlan2d(&plan_2d_C2R, 10, 20, CUFFT_C2R);

  cufftExecC2R(plan_2d_C2R, idata_2d_C2R, odata_2d_C2R);

  cufftHandle plan_2d_R2C;
  float2* odata_2d_R2C;
  float* idata_2d_R2C;

  cufftPlan2d(&plan_2d_R2C, 10, 20, CUFFT_R2C);

  cufftExecR2C(plan_2d_R2C, idata_2d_R2C, odata_2d_R2C);

  cufftHandle plan_2d_Z2Z;
  double2* odata_2d_Z2Z;
  double2* idata_2d_Z2Z;

  cufftPlan2d(&plan_2d_Z2Z, 10, 20, CUFFT_Z2Z);

  cufftExecZ2Z(plan_2d_Z2Z, idata_2d_Z2Z, odata_2d_Z2Z, CUFFT_INVERSE);

  cufftHandle plan_2d_Z2D;
  double* odata_2d_Z2D;
  double2* idata_2d_Z2D;

  cufftPlan2d(&plan_2d_Z2D, 10, 20, CUFFT_Z2D);

  cufftExecZ2D(plan_2d_Z2D, idata_2d_Z2D, odata_2d_Z2D);

  cufftHandle plan_2d_D2Z;
  double2* odata_2d_D2Z;
  double* idata_2d_D2Z;

  cufftPlan2d(&plan_2d_D2Z, 10, 20, CUFFT_D2Z);

  cufftExecD2Z(plan_2d_D2Z, idata_2d_D2Z, odata_2d_D2Z);

  cufftHandle plan_3d_C2C;
  float2* odata_3d_C2C;
  float2* idata_3d_C2C;

  cufftPlan3d(&plan_3d_C2C, 10, 20, 30, CUFFT_C2C);

  cufftExecC2C(plan_3d_C2C, idata_3d_C2C, odata_3d_C2C, CUFFT_FORWARD);

  cufftHandle plan_3d_C2R;
  float* odata_3d_C2R;
  float2* idata_3d_C2R;

  cufftPlan3d(&plan_3d_C2R, 10, 20, 30, CUFFT_C2R);

  cufftExecC2R(plan_3d_C2R, idata_3d_C2R, odata_3d_C2R);

  cufftHandle plan_3d_R2C;
  float2* odata_3d_R2C;
  float* idata_3d_R2C;

  cufftPlan3d(&plan_3d_R2C, 10, 20, 30, CUFFT_R2C);

  cufftExecR2C(plan_3d_R2C, idata_3d_R2C, odata_3d_R2C);

  cufftHandle plan_3d_Z2Z;
  double2* odata_3d_Z2Z;
  double2* idata_3d_Z2Z;

  cufftPlan3d(&plan_3d_Z2Z, 10, 20, 30, CUFFT_Z2Z);

  cufftExecZ2Z(plan_3d_Z2Z, idata_3d_Z2Z, odata_3d_Z2Z, CUFFT_INVERSE);

  cufftHandle plan_3d_Z2D;
  double* odata_3d_Z2D;
  double2* idata_3d_Z2D;

  cufftPlan3d(&plan_3d_Z2D, 10, 20, 30, CUFFT_Z2D);

  cufftExecZ2D(plan_3d_Z2D, idata_3d_Z2D, odata_3d_Z2D);

  cufftHandle plan_3d_D2Z;
  double2* odata_3d_D2Z;
  double* idata_3d_D2Z;

  cufftPlan3d(&plan_3d_D2Z, 10, 20, 30, CUFFT_D2Z);

  cufftExecD2Z(plan_3d_D2Z, idata_3d_D2Z, odata_3d_D2Z);

  cufftHandle plan_many_C2C;
  int odist_many_C2C;
  int ostride_many_C2C;
  int * onembed_many_C2C;
  int idist_many_C2C;
  int istride_many_C2C;
  int* inembed_many_C2C;
  int * n_many_C2C;
  float2* odata_many_C2C;
  float2* idata_many_C2C;

  cufftPlanMany(&plan_many_C2C, 3, n_many_C2C, inembed_many_C2C, istride_many_C2C, idist_many_C2C, onembed_many_C2C, ostride_many_C2C, odist_many_C2C, CUFFT_C2C, 12);

  cufftExecC2C(plan_many_C2C, idata_many_C2C, odata_many_C2C, CUFFT_FORWARD);

  cufftHandle plan_many_C2R;
  int odist_many_C2R;
  int ostride_many_C2R;
  int * onembed_many_C2R;
  int idist_many_C2R;
  int istride_many_C2R;
  int* inembed_many_C2R;
  int * n_many_C2R;
  float* odata_many_C2R;
  float2* idata_many_C2R;

  cufftPlanMany(&plan_many_C2R, 3, n_many_C2R, inembed_many_C2R, istride_many_C2R, idist_many_C2R, onembed_many_C2R, ostride_many_C2R, odist_many_C2R, CUFFT_C2R, 12);

  cufftExecC2R(plan_many_C2R, idata_many_C2R, odata_many_C2R);

  cufftHandle plan_many_R2C;
  int odist_many_R2C;
  int ostride_many_R2C;
  int * onembed_many_R2C;
  int idist_many_R2C;
  int istride_many_R2C;
  int* inembed_many_R2C;
  int * n_many_R2C;
  float2* odata_many_R2C;
  float* idata_many_R2C;

  cufftPlanMany(&plan_many_R2C, 3, n_many_R2C, inembed_many_R2C, istride_many_R2C, idist_many_R2C, onembed_many_R2C, ostride_many_R2C, odist_many_R2C, CUFFT_R2C, 12);

  cufftExecR2C(plan_many_R2C, idata_many_R2C, odata_many_R2C);

  cufftHandle plan_many_Z2Z;
  int odist_many_Z2Z;
  int ostride_many_Z2Z;
  int * onembed_many_Z2Z;
  int idist_many_Z2Z;
  int istride_many_Z2Z;
  int* inembed_many_Z2Z;
  int * n_many_Z2Z;
  double2* odata_many_Z2Z;
  double2* idata_many_Z2Z;

  cufftPlanMany(&plan_many_Z2Z, 3, n_many_Z2Z, inembed_many_Z2Z, istride_many_Z2Z, idist_many_Z2Z, onembed_many_Z2Z, ostride_many_Z2Z, odist_many_Z2Z, CUFFT_Z2Z, 12);

  cufftExecZ2Z(plan_many_Z2Z, idata_many_Z2Z, odata_many_Z2Z, CUFFT_INVERSE);

  cufftHandle plan_many_Z2D;
  int odist_many_Z2D;
  int ostride_many_Z2D;
  int * onembed_many_Z2D;
  int idist_many_Z2D;
  int istride_many_Z2D;
  int* inembed_many_Z2D;
  int * n_many_Z2D;
  double* odata_many_Z2D;
  double2* idata_many_Z2D;

  cufftPlanMany(&plan_many_Z2D, 3, n_many_Z2D, inembed_many_Z2D, istride_many_Z2D, idist_many_Z2D, onembed_many_Z2D, ostride_many_Z2D, odist_many_Z2D, CUFFT_Z2D, 12);

  cufftExecZ2D(plan_many_Z2D, idata_many_Z2D, odata_many_Z2D);

  cufftHandle plan_many_D2Z;
  int odist_many_D2Z;
  int ostride_many_D2Z;
  int * onembed_many_D2Z;
  int idist_many_D2Z;
  int istride_many_D2Z;
  int* inembed_many_D2Z;
  int * n_many_D2Z;
  double2* odata_many_D2Z;
  double* idata_many_D2Z;

  cufftPlanMany(&plan_many_D2Z, 3, n_many_D2Z, inembed_many_D2Z, istride_many_D2Z, idist_many_D2Z, onembed_many_D2Z, ostride_many_D2Z, odist_many_D2Z, CUFFT_D2Z, 12);

  cufftExecD2Z(plan_many_D2Z, idata_many_D2Z, odata_many_D2Z);

  cufftHandle plan_m1d_C2C;
  size_t* work_size_m1d_C2C;
  float2* odata_m1d_C2C;
  float2* idata_m1d_C2C;

  cufftMakePlan1d(plan_m1d_C2C, 10, CUFFT_C2C, 3, work_size_m1d_C2C);

  cufftExecC2C(plan_m1d_C2C, idata_m1d_C2C, odata_m1d_C2C, CUFFT_FORWARD);

  cufftHandle plan_m1d_C2R;
  size_t* work_size_m1d_C2R;
  float* odata_m1d_C2R;
  float2* idata_m1d_C2R;

  cufftMakePlan1d(plan_m1d_C2R, 10, CUFFT_C2R, 3, work_size_m1d_C2R);

  cufftExecC2R(plan_m1d_C2R, idata_m1d_C2R, odata_m1d_C2R);

  cufftHandle plan_m1d_R2C;
  size_t* work_size_m1d_R2C;
  float2* odata_m1d_R2C;
  float* idata_m1d_R2C;

  cufftMakePlan1d(plan_m1d_R2C, 10, CUFFT_R2C, 3, work_size_m1d_R2C);

  cufftExecR2C(plan_m1d_R2C, idata_m1d_R2C, odata_m1d_R2C);

  cufftHandle plan_m1d_Z2Z;
  size_t* work_size_m1d_Z2Z;
  double2* odata_m1d_Z2Z;
  double2* idata_m1d_Z2Z;

  cufftMakePlan1d(plan_m1d_Z2Z, 10, CUFFT_Z2Z, 3, work_size_m1d_Z2Z);

  cufftExecZ2Z(plan_m1d_Z2Z, idata_m1d_Z2Z, odata_m1d_Z2Z, CUFFT_INVERSE);

  cufftHandle plan_m1d_Z2D;
  size_t* work_size_m1d_Z2D;
  double* odata_m1d_Z2D;
  double2* idata_m1d_Z2D;

  cufftMakePlan1d(plan_m1d_Z2D, 10, CUFFT_Z2D, 3, work_size_m1d_Z2D);

  cufftExecZ2D(plan_m1d_Z2D, idata_m1d_Z2D, odata_m1d_Z2D);

  cufftHandle plan_m1d_D2Z;
  size_t* work_size_m1d_D2Z;
  double2* odata_m1d_D2Z;
  double* idata_m1d_D2Z;

  cufftMakePlan1d(plan_m1d_D2Z, 10, CUFFT_D2Z, 3, work_size_m1d_D2Z);

  cufftExecD2Z(plan_m1d_D2Z, idata_m1d_D2Z, odata_m1d_D2Z);

  cufftHandle plan_m2d_C2C;
  size_t* work_size_m2d_C2C;
  float2* odata_m2d_C2C;
  float2* idata_m2d_C2C;

  cufftMakePlan2d(plan_m2d_C2C, 10, 20, CUFFT_C2C, work_size_m2d_C2C);

  cufftExecC2C(plan_m2d_C2C, idata_m2d_C2C, odata_m2d_C2C, CUFFT_FORWARD);

  cufftHandle plan_m2d_C2R;
  size_t* work_size_m2d_C2R;
  float* odata_m2d_C2R;
  float2* idata_m2d_C2R;

  cufftMakePlan2d(plan_m2d_C2R, 10, 20, CUFFT_C2R, work_size_m2d_C2R);

  cufftExecC2R(plan_m2d_C2R, idata_m2d_C2R, odata_m2d_C2R);

  cufftHandle plan_m2d_R2C;
  size_t* work_size_m2d_R2C;
  float2* odata_m2d_R2C;
  float* idata_m2d_R2C;

  cufftMakePlan2d(plan_m2d_R2C, 10, 20, CUFFT_R2C, work_size_m2d_R2C);

  cufftExecR2C(plan_m2d_R2C, idata_m2d_R2C, odata_m2d_R2C);

  cufftHandle plan_m2d_Z2Z;
  size_t* work_size_m2d_Z2Z;
  double2* odata_m2d_Z2Z;
  double2* idata_m2d_Z2Z;

  cufftMakePlan2d(plan_m2d_Z2Z, 10, 20, CUFFT_Z2Z, work_size_m2d_Z2Z);

  cufftExecZ2Z(plan_m2d_Z2Z, idata_m2d_Z2Z, odata_m2d_Z2Z, CUFFT_INVERSE);

  cufftHandle plan_m2d_Z2D;
  size_t* work_size_m2d_Z2D;
  double* odata_m2d_Z2D;
  double2* idata_m2d_Z2D;

  cufftMakePlan2d(plan_m2d_Z2D, 10, 20, CUFFT_Z2D, work_size_m2d_Z2D);

  cufftExecZ2D(plan_m2d_Z2D, idata_m2d_Z2D, odata_m2d_Z2D);

  cufftHandle plan_m2d_D2Z;
  size_t* work_size_m2d_D2Z;
  double2* odata_m2d_D2Z;
  double* idata_m2d_D2Z;

  cufftMakePlan2d(plan_m2d_D2Z, 10, 20, CUFFT_D2Z, work_size_m2d_D2Z);

  cufftExecD2Z(plan_m2d_D2Z, idata_m2d_D2Z, odata_m2d_D2Z);

  cufftHandle plan_m3d_C2C;
  size_t* work_size_m3d_C2C;
  float2* odata_m3d_C2C;
  float2* idata_m3d_C2C;

  cufftMakePlan3d(plan_m3d_C2C, 10, 20, 30, CUFFT_C2C, work_size_m3d_C2C);

  cufftExecC2C(plan_m3d_C2C, idata_m3d_C2C, odata_m3d_C2C, CUFFT_FORWARD);

  cufftHandle plan_m3d_C2R;
  size_t* work_size_m3d_C2R;
  float* odata_m3d_C2R;
  float2* idata_m3d_C2R;

  cufftMakePlan3d(plan_m3d_C2R, 10, 20, 30, CUFFT_C2R, work_size_m3d_C2R);

  cufftExecC2R(plan_m3d_C2R, idata_m3d_C2R, odata_m3d_C2R);

  cufftHandle plan_m3d_R2C;
  size_t* work_size_m3d_R2C;
  float2* odata_m3d_R2C;
  float* idata_m3d_R2C;

  cufftMakePlan3d(plan_m3d_R2C, 10, 20, 30, CUFFT_R2C, work_size_m3d_R2C);

  cufftExecR2C(plan_m3d_R2C, idata_m3d_R2C, odata_m3d_R2C);

  cufftHandle plan_m3d_Z2Z;
  size_t* work_size_m3d_Z2Z;
  double2* odata_m3d_Z2Z;
  double2* idata_m3d_Z2Z;

  cufftMakePlan3d(plan_m3d_Z2Z, 10, 20, 30, CUFFT_Z2Z, work_size_m3d_Z2Z);

  cufftExecZ2Z(plan_m3d_Z2Z, idata_m3d_Z2Z, odata_m3d_Z2Z, CUFFT_INVERSE);

  cufftHandle plan_m3d_Z2D;
  size_t* work_size_m3d_Z2D;
  double* odata_m3d_Z2D;
  double2* idata_m3d_Z2D;

  cufftMakePlan3d(plan_m3d_Z2D, 10, 20, 30, CUFFT_Z2D, work_size_m3d_Z2D);

  cufftExecZ2D(plan_m3d_Z2D, idata_m3d_Z2D, odata_m3d_Z2D);

  cufftHandle plan_m3d_D2Z;
  size_t* work_size_m3d_D2Z;
  double2* odata_m3d_D2Z;
  double* idata_m3d_D2Z;

  cufftMakePlan3d(plan_m3d_D2Z, 10, 20, 30, CUFFT_D2Z, work_size_m3d_D2Z);

  cufftExecD2Z(plan_m3d_D2Z, idata_m3d_D2Z, odata_m3d_D2Z);

  cufftHandle plan_mmany_C2C;
  size_t* work_size_mmany_C2C;
  int odist_mmany_C2C;
  int ostride_mmany_C2C;
  int * onembed_mmany_C2C;
  int idist_mmany_C2C;
  int istride_mmany_C2C;
  int* inembed_mmany_C2C;
  int * n_mmany_C2C;
  float2* odata_mmany_C2C;
  float2* idata_mmany_C2C;

  cufftMakePlanMany(plan_mmany_C2C, 3, n_mmany_C2C, inembed_mmany_C2C, istride_mmany_C2C, idist_mmany_C2C, onembed_mmany_C2C, ostride_mmany_C2C, odist_mmany_C2C, CUFFT_C2C, 12, work_size_mmany_C2C);

  cufftExecC2C(plan_mmany_C2C, idata_mmany_C2C, odata_mmany_C2C, CUFFT_FORWARD);

  cufftHandle plan_mmany_C2R;
  size_t* work_size_mmany_C2R;
  int odist_mmany_C2R;
  int ostride_mmany_C2R;
  int * onembed_mmany_C2R;
  int idist_mmany_C2R;
  int istride_mmany_C2R;
  int* inembed_mmany_C2R;
  int * n_mmany_C2R;
  float* odata_mmany_C2R;
  float2* idata_mmany_C2R;

  cufftMakePlanMany(plan_mmany_C2R, 3, n_mmany_C2R, inembed_mmany_C2R, istride_mmany_C2R, idist_mmany_C2R, onembed_mmany_C2R, ostride_mmany_C2R, odist_mmany_C2R, CUFFT_C2R, 12, work_size_mmany_C2R);

  cufftExecC2R(plan_mmany_C2R, idata_mmany_C2R, odata_mmany_C2R);

  cufftHandle plan_mmany_R2C;
  size_t* work_size_mmany_R2C;
  int odist_mmany_R2C;
  int ostride_mmany_R2C;
  int * onembed_mmany_R2C;
  int idist_mmany_R2C;
  int istride_mmany_R2C;
  int* inembed_mmany_R2C;
  int * n_mmany_R2C;
  float2* odata_mmany_R2C;
  float* idata_mmany_R2C;

  cufftMakePlanMany(plan_mmany_R2C, 3, n_mmany_R2C, inembed_mmany_R2C, istride_mmany_R2C, idist_mmany_R2C, onembed_mmany_R2C, ostride_mmany_R2C, odist_mmany_R2C, CUFFT_R2C, 12, work_size_mmany_R2C);

  cufftExecR2C(plan_mmany_R2C, idata_mmany_R2C, odata_mmany_R2C);

  cufftHandle plan_mmany_Z2Z;
  size_t* work_size_mmany_Z2Z;
  int odist_mmany_Z2Z;
  int ostride_mmany_Z2Z;
  int * onembed_mmany_Z2Z;
  int idist_mmany_Z2Z;
  int istride_mmany_Z2Z;
  int* inembed_mmany_Z2Z;
  int * n_mmany_Z2Z;
  double2* odata_mmany_Z2Z;
  double2* idata_mmany_Z2Z;

  cufftMakePlanMany(plan_mmany_Z2Z, 3, n_mmany_Z2Z, inembed_mmany_Z2Z, istride_mmany_Z2Z, idist_mmany_Z2Z, onembed_mmany_Z2Z, ostride_mmany_Z2Z, odist_mmany_Z2Z, CUFFT_Z2Z, 12, work_size_mmany_Z2Z);

  cufftExecZ2Z(plan_mmany_Z2Z, idata_mmany_Z2Z, odata_mmany_Z2Z, CUFFT_INVERSE);

  cufftHandle plan_mmany_Z2D;
  size_t* work_size_mmany_Z2D;
  int odist_mmany_Z2D;
  int ostride_mmany_Z2D;
  int * onembed_mmany_Z2D;
  int idist_mmany_Z2D;
  int istride_mmany_Z2D;
  int* inembed_mmany_Z2D;
  int * n_mmany_Z2D;
  double* odata_mmany_Z2D;
  double2* idata_mmany_Z2D;

  cufftMakePlanMany(plan_mmany_Z2D, 3, n_mmany_Z2D, inembed_mmany_Z2D, istride_mmany_Z2D, idist_mmany_Z2D, onembed_mmany_Z2D, ostride_mmany_Z2D, odist_mmany_Z2D, CUFFT_Z2D, 12, work_size_mmany_Z2D);

  cufftExecZ2D(plan_mmany_Z2D, idata_mmany_Z2D, odata_mmany_Z2D);

  cufftHandle plan_mmany_D2Z;
  size_t* work_size_mmany_D2Z;
  int odist_mmany_D2Z;
  int ostride_mmany_D2Z;
  int * onembed_mmany_D2Z;
  int idist_mmany_D2Z;
  int istride_mmany_D2Z;
  int* inembed_mmany_D2Z;
  int * n_mmany_D2Z;
  double2* odata_mmany_D2Z;
  double* idata_mmany_D2Z;

  cufftMakePlanMany(plan_mmany_D2Z, 3, n_mmany_D2Z, inembed_mmany_D2Z, istride_mmany_D2Z, idist_mmany_D2Z, onembed_mmany_D2Z, ostride_mmany_D2Z, odist_mmany_D2Z, CUFFT_D2Z, 12, work_size_mmany_D2Z);

  cufftExecD2Z(plan_mmany_D2Z, idata_mmany_D2Z, odata_mmany_D2Z);

  cufftHandle plan_mmany64_C2C;
  size_t* work_size_mmany64_C2C;
  long long int odist_mmany64_C2C;
  long long int ostride_mmany64_C2C;
  long long int * onembed_mmany64_C2C;
  long long int idist_mmany64_C2C;
  long long int istride_mmany64_C2C;
  long long int* inembed_mmany64_C2C;
  long long int * n_mmany64_C2C;
  float2* odata_mmany64_C2C;
  float2* idata_mmany64_C2C;

  cufftMakePlanMany64(plan_mmany64_C2C, 3, n_mmany64_C2C, inembed_mmany64_C2C, istride_mmany64_C2C, idist_mmany64_C2C, onembed_mmany64_C2C, ostride_mmany64_C2C, odist_mmany64_C2C, CUFFT_C2C, 12, work_size_mmany64_C2C);

  cufftExecC2C(plan_mmany64_C2C, idata_mmany64_C2C, odata_mmany64_C2C, CUFFT_FORWARD);

  cufftHandle plan_mmany64_C2R;
  size_t* work_size_mmany64_C2R;
  long long int odist_mmany64_C2R;
  long long int ostride_mmany64_C2R;
  long long int * onembed_mmany64_C2R;
  long long int idist_mmany64_C2R;
  long long int istride_mmany64_C2R;
  long long int* inembed_mmany64_C2R;
  long long int * n_mmany64_C2R;
  float* odata_mmany64_C2R;
  float2* idata_mmany64_C2R;

  cufftMakePlanMany64(plan_mmany64_C2R, 3, n_mmany64_C2R, inembed_mmany64_C2R, istride_mmany64_C2R, idist_mmany64_C2R, onembed_mmany64_C2R, ostride_mmany64_C2R, odist_mmany64_C2R, CUFFT_C2R, 12, work_size_mmany64_C2R);

  cufftExecC2R(plan_mmany64_C2R, idata_mmany64_C2R, odata_mmany64_C2R);

  cufftHandle plan_mmany64_R2C;
  size_t* work_size_mmany64_R2C;
  long long int odist_mmany64_R2C;
  long long int ostride_mmany64_R2C;
  long long int * onembed_mmany64_R2C;
  long long int idist_mmany64_R2C;
  long long int istride_mmany64_R2C;
  long long int* inembed_mmany64_R2C;
  long long int * n_mmany64_R2C;
  float2* odata_mmany64_R2C;
  float* idata_mmany64_R2C;

  cufftMakePlanMany64(plan_mmany64_R2C, 3, n_mmany64_R2C, inembed_mmany64_R2C, istride_mmany64_R2C, idist_mmany64_R2C, onembed_mmany64_R2C, ostride_mmany64_R2C, odist_mmany64_R2C, CUFFT_R2C, 12, work_size_mmany64_R2C);

  cufftExecR2C(plan_mmany64_R2C, idata_mmany64_R2C, odata_mmany64_R2C);

  cufftHandle plan_mmany64_Z2Z;
  size_t* work_size_mmany64_Z2Z;
  long long int odist_mmany64_Z2Z;
  long long int ostride_mmany64_Z2Z;
  long long int * onembed_mmany64_Z2Z;
  long long int idist_mmany64_Z2Z;
  long long int istride_mmany64_Z2Z;
  long long int* inembed_mmany64_Z2Z;
  long long int * n_mmany64_Z2Z;
  double2* odata_mmany64_Z2Z;
  double2* idata_mmany64_Z2Z;

  cufftMakePlanMany64(plan_mmany64_Z2Z, 3, n_mmany64_Z2Z, inembed_mmany64_Z2Z, istride_mmany64_Z2Z, idist_mmany64_Z2Z, onembed_mmany64_Z2Z, ostride_mmany64_Z2Z, odist_mmany64_Z2Z, CUFFT_Z2Z, 12, work_size_mmany64_Z2Z);

  cufftExecZ2Z(plan_mmany64_Z2Z, idata_mmany64_Z2Z, odata_mmany64_Z2Z, CUFFT_INVERSE);

  cufftHandle plan_mmany64_Z2D;
  size_t* work_size_mmany64_Z2D;
  long long int odist_mmany64_Z2D;
  long long int ostride_mmany64_Z2D;
  long long int * onembed_mmany64_Z2D;
  long long int idist_mmany64_Z2D;
  long long int istride_mmany64_Z2D;
  long long int* inembed_mmany64_Z2D;
  long long int * n_mmany64_Z2D;
  double* odata_mmany64_Z2D;
  double2* idata_mmany64_Z2D;

  cufftMakePlanMany64(plan_mmany64_Z2D, 3, n_mmany64_Z2D, inembed_mmany64_Z2D, istride_mmany64_Z2D, idist_mmany64_Z2D, onembed_mmany64_Z2D, ostride_mmany64_Z2D, odist_mmany64_Z2D, CUFFT_Z2D, 12, work_size_mmany64_Z2D);

  cufftExecZ2D(plan_mmany64_Z2D, idata_mmany64_Z2D, odata_mmany64_Z2D);

  cufftHandle plan_mmany64_D2Z;
  size_t* work_size_mmany64_D2Z;
  long long int odist_mmany64_D2Z;
  long long int ostride_mmany64_D2Z;
  long long int * onembed_mmany64_D2Z;
  long long int idist_mmany64_D2Z;
  long long int istride_mmany64_D2Z;
  long long int* inembed_mmany64_D2Z;
  long long int * n_mmany64_D2Z;
  double2* odata_mmany64_D2Z;
  double* idata_mmany64_D2Z;

  cufftMakePlanMany64(plan_mmany64_D2Z, 3, n_mmany64_D2Z, inembed_mmany64_D2Z, istride_mmany64_D2Z, idist_mmany64_D2Z, onembed_mmany64_D2Z, ostride_mmany64_D2Z, odist_mmany64_D2Z, CUFFT_D2Z, 12, work_size_mmany64_D2Z);

  cufftExecD2Z(plan_mmany64_D2Z, idata_mmany64_D2Z, odata_mmany64_D2Z);

  return 0;
}