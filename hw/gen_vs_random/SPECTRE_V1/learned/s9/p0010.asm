.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 80
and bl, cl
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
imul dl
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, 11
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
