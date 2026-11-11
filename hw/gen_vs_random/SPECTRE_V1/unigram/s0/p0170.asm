.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], 59
or dil, -55
xor cl, -103
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
bt rcx, rdx
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, 52
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], bx
lea si, qword ptr [rdi + rsi]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 1
test dil, -107
lea rax, qword ptr [rbx + rax + 2]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edx
cmovns rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
