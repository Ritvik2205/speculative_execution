.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rdi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdi]
and ax, 37
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 80
cmovb cx, bx
or rax, 1362710293
and sil, sil
xor cl, dil
jmp .bb_0.2
.bb_0.2:
lea rbx, qword ptr [rax + rsi]
jmp .bb_0.3
.bb_0.3:
test dil, -126
and rsi, 2
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
