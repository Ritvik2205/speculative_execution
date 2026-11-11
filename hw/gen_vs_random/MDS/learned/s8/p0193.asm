.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 16
or al, bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
jmp .bb_0.1
.bb_0.1:
test dl, dil
test cl, bl
or rsi, 65
not cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
test ecx, -1843375753
xor dil, -124
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
xor sil, al
test rax, 1000448998
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
or cl, al
and sil, bl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
