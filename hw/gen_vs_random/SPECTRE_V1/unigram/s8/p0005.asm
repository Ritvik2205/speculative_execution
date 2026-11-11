.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rax
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdi
adc ecx, 91
and rsi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rsi]
cmovnbe rcx, rdx
sub bl, cl
lea rax, qword ptr [rbx + rdx]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 81
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovs rdx, rdx
xor sil, sil
add bl, -58 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
inc dil
sbb al, bl
add al, 120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
lea bx, qword ptr [rsi + rdi + 66]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
