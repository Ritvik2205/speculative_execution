.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -36 # instrumentation
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], ecx
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
sbb bl, -88
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
sbb sil, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
