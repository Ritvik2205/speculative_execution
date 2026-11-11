.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 50
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
xor sil, -14
jmp .bb_0.1
.bb_0.1:
test dil, -51
jmp .bb_0.2
.bb_0.2:
test dl, al
jmp .bb_0.3
.bb_0.3:
or bl, cl
or al, 74
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and al, cl
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
