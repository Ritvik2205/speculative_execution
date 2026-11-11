.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
or rax, -1561934807
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and al, dl
test eax, -1634766116
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
or dl, 51
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
xor dil, cl
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], cx
test dl, 9
jmp .bb_0.3
.bb_0.3:
or bl, dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
xor al, 9
and al, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
