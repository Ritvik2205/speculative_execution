.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
or bl, 114
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea rbx, qword ptr [rsi + rax]
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
cmp al, 27
lea rdx, qword ptr [rsi + rdi + 19]
jmp .bb_0.5
.bb_0.5:
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
