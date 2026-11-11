.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs di, bx
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
sbb cl, -11
and rcx, 62
adc bl, 86
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
jmp .bb_0.3
.bb_0.3:
test esi, 54
test al, 15
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
