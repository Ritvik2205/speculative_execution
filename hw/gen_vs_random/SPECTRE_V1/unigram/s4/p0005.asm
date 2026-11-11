.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ecx, 31
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
not cx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
add bl, 97 # instrumentation
cmovnb cx, ax
sub al, dil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 42 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdi]
sub dil, dil
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], ax
add dl, -83 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
or cl, -62
sbb dil, -93
add bl, -9 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
