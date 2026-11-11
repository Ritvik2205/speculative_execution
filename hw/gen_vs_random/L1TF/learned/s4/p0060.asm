.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 80
and rsi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rsi]
sbb al, dl
btc ebx, 11
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb al, dil
and rdi, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rdi]
cmovnp ax, bx
or dl, al
lea bx, qword ptr [rax + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
