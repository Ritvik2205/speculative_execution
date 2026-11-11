.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
lea rax, qword ptr [rsi + rbx + 67]
sub al, sil
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edi
sbb ax, -9869
test cl, 67
xchg bl, al
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
or dl, -67
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
