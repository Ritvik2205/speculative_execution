.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -67
or esi, edx
xor bx, 63
jmp .bb_0.1
.bb_0.1:
test dil, -126
sub al, 9
jmp .bb_0.2
.bb_0.2:
add bl, 89 # instrumentation
sbb dl, cl
and rsi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
