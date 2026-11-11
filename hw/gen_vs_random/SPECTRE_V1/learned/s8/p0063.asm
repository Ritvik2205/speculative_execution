.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
sub al, bl
sbb al, 66
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 31
test cl, -24
mov dil, dl
adc al, dil
sbb cl, dl
cmp rax, 900122030
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
btc di, dx
jnz .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 61
inc al
sub cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
