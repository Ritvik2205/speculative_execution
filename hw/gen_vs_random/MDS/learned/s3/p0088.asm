.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and cl, cl
or dil, bl
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and dil, -39
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 3
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rsi, 99
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
