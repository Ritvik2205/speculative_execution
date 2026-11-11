.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
xor cl, 89
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 44
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
cbw
sbb dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
