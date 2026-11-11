.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 59
and dl, bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 76
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and bl, sil
or dx, 55
xor al, dl
test bl, dil
adc bl, -14
test ax, 636
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
