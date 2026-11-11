.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 16
xor cl, -13
jmp .bb_0.1
.bb_0.1:
test bl, cl
or al, 30
bt cx, si
jmp .bb_0.2
.bb_0.2:
test dl, -95
or rdx, -109
xor al, 9
xor ax, -6793
btr edi, esi
or al, 24
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
and dl, cl
and rax, 627810357
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
