.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
jmp .bb_0.1
.bb_0.1:
bts rdx, 200
test dl, bl
xor cl, 98
xor cl, dl
xor di, 40
or dil, -78
or cl, -36
bt cx, ax
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
test dl, cl
and cx, -2
xor sil, 94
test rax, 1207043993
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
