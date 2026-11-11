.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -79
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -32
test bl, 45
not ecx
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test edx, -541774418
test bl, 12
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
xor dl, dil
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
