.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
cmp rbx, 6
test sil, -31
xor cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
