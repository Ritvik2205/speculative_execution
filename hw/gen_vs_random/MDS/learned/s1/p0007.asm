.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
test al, dl
test cl, -123
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
xor sil, dl
jmp .bb_0.2
.bb_0.2:
or dil, -41
test cl, dl
and sil, cl
xor eax, -127
not dl
xor sil, dil
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
or al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
