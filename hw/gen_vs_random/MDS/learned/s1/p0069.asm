.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 91
or sil, -49
test rsi, 24
test dil, bl
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and bl, 68
xor al, 8
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test rax, 1207043993
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
test dil, cl
test bl, cl
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
