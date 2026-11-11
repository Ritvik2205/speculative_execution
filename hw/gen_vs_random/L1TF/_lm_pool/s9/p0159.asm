.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 44
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
and ax, 37
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
cmovb di, ax
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
and al, -68
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
sub dil, sil
add dil, sil
xor ax, 34
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
