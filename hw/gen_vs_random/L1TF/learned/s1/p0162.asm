.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
lea di, qword ptr [rdx]
xchg rdi, rbx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
and bl, bl
cmovb bx, dx
lea bx, qword ptr [rdi]
jmp .bb_0.2
.bb_0.2:
xor cl, dil
lea rax, qword ptr [rdx]
sbb dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
