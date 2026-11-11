.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -105
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
add cl, -127
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
or dil, cl
cmp cl, dil
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and cl, -57
mov sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
