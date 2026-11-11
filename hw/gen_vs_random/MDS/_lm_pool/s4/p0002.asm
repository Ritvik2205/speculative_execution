.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, cl
bts rdx, rcx
and sil, -69
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and bl, cl
and dil, -62
and si, -121
xor al, sil
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
test edx, -372470678
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 90
or rcx, -17
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
