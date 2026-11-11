.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
lea ax, qword ptr [rbx + rcx + 45]
bt eax, ecx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
add bl, bl
sub dil, -39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
