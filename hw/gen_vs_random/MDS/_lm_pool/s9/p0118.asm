.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
xor al, dl
and dl, dl
and ax, 19740
or al, cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
xor al, 99
or al, 30
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
bt ax, cx
or rsi, 55
xor al, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
