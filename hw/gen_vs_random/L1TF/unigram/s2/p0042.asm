.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, dl
setz dil
imul ax
lea ax, qword ptr [rbx + rax + 87]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 9
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
lea rdi, qword ptr [rdx + rdi + 80]
test sil, 29
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
cmovz ecx, edx
and rax, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rax]
or dil, -113
not eax
cmovnp eax, ecx
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
