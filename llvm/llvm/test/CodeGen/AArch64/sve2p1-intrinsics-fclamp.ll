; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -verify-machineinstrs < %s | FileCheck %s

target triple = "aarch64-linux-gnu"

define <vscale x 8 x half> @test_fclamp_f16(<vscale x 8 x half> %a, <vscale x 8 x half> %b, <vscale x 8 x half> %c) #0 {
; CHECK-LABEL: test_fclamp_f16:
; CHECK:       // %bb.0:
; CHECK-NEXT:    fclamp z0.h, z1.h, z2.h
; CHECK-NEXT:    ret
  %res = call <vscale x 8 x half> @llvm.aarch64.sve.fclamp.nxv8f16(<vscale x 8 x half> %a, <vscale x 8 x half> %b, <vscale x 8 x half> %c)
  ret <vscale x 8 x half> %res
}

define <vscale x 4 x float> @test_fclamp_f32(<vscale x 4 x float> %a, <vscale x 4 x float> %b, <vscale x 4 x float> %c) #0 {
; CHECK-LABEL: test_fclamp_f32:
; CHECK:       // %bb.0:
; CHECK-NEXT:    fclamp z0.s, z1.s, z2.s
; CHECK-NEXT:    ret
  %res = call <vscale x 4 x float> @llvm.aarch64.sve.fclamp.nxv4f32(<vscale x 4 x float> %a, <vscale x 4 x float> %b, <vscale x 4 x float> %c)
  ret <vscale x 4 x float> %res
}

define <vscale x 2 x double> @test_fclamp_f64(<vscale x 2 x double> %a, <vscale x 2 x double> %b, <vscale x 2 x double> %c) #0 {
; CHECK-LABEL: test_fclamp_f64:
; CHECK:       // %bb.0:
; CHECK-NEXT:    fclamp z0.d, z1.d, z2.d
; CHECK-NEXT:    ret
  %res = call <vscale x 2 x double> @llvm.aarch64.sve.fclamp.nxv2f64(<vscale x 2 x double> %a, <vscale x 2 x double> %b, <vscale x 2 x double> %c)
  ret <vscale x 2 x double> %res
}

attributes #0 = { "target-features"="+sve2p1" }

declare <vscale x 8 x half> @llvm.aarch64.sve.fclamp.nxv8f16(<vscale x 8 x half>, <vscale x 8 x half>, <vscale x 8 x half>)
declare <vscale x 4 x float> @llvm.aarch64.sve.fclamp.nxv4f32(<vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>)
declare <vscale x 2 x double> @llvm.aarch64.sve.fclamp.nxv2f64(<vscale x 2 x double>, <vscale x 2 x double>, <vscale x 2 x double>)