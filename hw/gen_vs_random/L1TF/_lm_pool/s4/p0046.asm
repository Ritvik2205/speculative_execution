.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 69
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rsi]
xor dil, -42
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
lea cx, qword ptr [rcx]
add bx, 71
bts eax, edi
and cl, 86
add dl, 125
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 52
or al, -5
and dx, 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
