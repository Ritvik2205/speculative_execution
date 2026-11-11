.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dil
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
lea eax, qword ptr [rsi]
or al, dil
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 72
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
jmp .bb_0.1
.bb_0.1:
cmp di, 45
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rdx
lea di, qword ptr [rsi + rcx + 28149]
jmp .bb_0.2
.bb_0.2:
xor dil, sil
cmp ax, 24210
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
