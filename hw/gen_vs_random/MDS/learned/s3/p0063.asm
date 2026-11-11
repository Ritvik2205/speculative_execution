.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, sil
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
test dl, 48
test al, 22
or cl, bl
test cl, dl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
bt dx, 162
test dl, -95
xor ecx, 8
and rdi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
test dl, -95
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
xor dl, -43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
