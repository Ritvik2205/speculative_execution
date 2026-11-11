.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 56
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
add al, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
lea rcx, qword ptr [rbx + rcx + 3]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
mov edx, 73
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -89
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
xchg rbx, rdi
add cl, -126 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
