.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 86
test cl, -18
test bl, dl
or cl, dil
test dx, 16353
and dil, 125
xor rax, -1499464454
and bl, al
test rbx, 46
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
or al, -24
test al, cl
jmp .bb_0.1
.bb_0.1:
and dil, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
