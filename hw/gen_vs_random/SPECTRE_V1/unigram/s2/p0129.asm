.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -66 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
movsx cx, dl
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rbx], ax
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 31
bt cx, dx
cmp sil, dil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnbe dx, cx
lea rsi, qword ptr [rcx + rbx]
xor rdx, 64
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 69
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
test edx, 1380346728
add dl, 35 # instrumentation
cmovnz rbx, rsi
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
