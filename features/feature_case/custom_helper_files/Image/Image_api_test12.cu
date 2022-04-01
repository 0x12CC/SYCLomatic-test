// ====------ Image_api_test12.cu---------- *- CUDA -* ----===////
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//
// ===----------------------------------------------------------------------===//

// RUN: dpct --format-range=none  --usm-level=none  --use-custom-helper=api -out-root %T/Image/api_test12_out %s --cuda-include-path="%cuda-path/include" -- -x cuda --cuda-host-only
// RUN: grep "IsCalled" %T/Image/api_test12_out/MainSourceFiles.yaml | wc -l > %T/Image/api_test12_out/count.txt
// RUN: FileCheck --input-file %T/Image/api_test12_out/count.txt --match-full-lines %s
// RUN: rm -rf %T/Image/api_test12_out

// CHECK: 72
// TEST_FEATURE: Image_image_wrapper_base_get_sampling_info
// TEST_FEATURE: Image_image_wrapper_base_get_addressing_mode
// TEST_FEATURE: Image_image_wrapper_base_get_channel
// TEST_FEATURE: Image_image_wrapper_base_is_coordinate_normalized
// TEST_FEATURE: Image_image_wrapper_base_get_channel_data_type
// TEST_FEATURE: Image_image_wrapper_base_get_channel_size
// TEST_FEATURE: Image_image_wrapper_base_get_filtering_mode


// WORK_AROUND_TEST_FEATURE: Image_image_wrapper_base_get_coordinate_normalization_mode
// WORK_AROUND_TEST_FEATURE: Image_image_wrapper_base_get_channel_num
// WORK_AROUND_TEST_FEATURE: Image_image_wrapper_base_get_channel_type

static texture<float4, 2> tex42;

void foo(cudaTextureAddressMode,
         cudaChannelFormatDesc,
         int,
         cudaChannelFormatKind,
         int,
         cudaTextureFilterMode) {}

int main() {
  CUDA_TEXTURE_DESC texDesc;
  CUtexObject tex;
  cuTexObjectGetTextureDesc(&texDesc, tex);
  foo(tex42.addressMode[0],
      tex42.channelDesc,
      tex42.normalized,
      tex42.channelDesc.f,
      tex42.channelDesc.z,
      tex42.filterMode);

  return 0;
}
