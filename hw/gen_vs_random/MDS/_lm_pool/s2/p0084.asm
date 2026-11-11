.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
or rdi, 21
and bl, cl
xor al, 55
and al, cl
xor dl, 8
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
test edi, -1252846009
and cl, -111
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 80
xor ax, -4010
test bl, 65
xor cl, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
