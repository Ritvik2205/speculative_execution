.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
sub al, dil
sub cl, sil
sub al, -1
adc bx, 76
and rax, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rax]
inc al
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 22
add al, -65
add al, sil
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
cmp cl, al
add dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
