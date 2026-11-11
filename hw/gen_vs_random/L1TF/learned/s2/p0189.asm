.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
xor al, 89
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 39
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dl
xor cl, al
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
