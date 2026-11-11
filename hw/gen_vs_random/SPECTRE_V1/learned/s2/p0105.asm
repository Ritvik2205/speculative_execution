.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 32540
mul rcx
and rax, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rax]
lea rcx, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
sub bl, -19
cmp dil, -58
lea bx, qword ptr [rax + rdx + 51]
lea cx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
