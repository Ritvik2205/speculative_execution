.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
xor dl, -19
test sil, dil
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
jmp .bb_0.2
.bb_0.2:
and dl, -73
and cx, -2
test dl, 9
or cl, 30
or dl, sil
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
test sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
