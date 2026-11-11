.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
xor cl, 71
add al, 24 # instrumentation
lea rax, qword ptr [rax]
lea dx, qword ptr [rax + rcx + 51]
not ax
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 57
sbb bl, dil
cmovnz rcx, rdx
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rsi]
bt ecx, esi
add bl, cl
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
