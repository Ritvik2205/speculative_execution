.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 3
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 65
test dil, -51
or dl, -8
test cl, bl
and al, -54
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
test cl, sil
or bl, cl
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
