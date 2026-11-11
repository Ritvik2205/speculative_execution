.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
and dl, dl
and cl, -6
and dx, 3
xor sil, dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
test sil, dil
not dil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
test bl, sil
and rsi, 66
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 79
test dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
