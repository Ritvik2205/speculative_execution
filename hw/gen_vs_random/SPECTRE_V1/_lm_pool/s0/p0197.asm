.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], dx
lea eax, qword ptr [rsi]
add bl, cl
xchg sil, dil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
mov dl, bl
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
xor ebx, 3
sbb al, 66
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
xor al, dl
sub dil, -32
cmp al, 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
