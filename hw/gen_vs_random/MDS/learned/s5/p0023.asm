.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
test bl, -114
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
or al, cl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
test al, cl
xor cx, -18
and cl, 79
or dl, cl
or dil, -41
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
test rax, 1207043993
xor al, 115
xor dil, -124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
