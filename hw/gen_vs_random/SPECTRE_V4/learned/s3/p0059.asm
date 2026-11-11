.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -83
test cl, sil
add bl, al
adc bl, -58
and al, -1
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
sbb al, 70
adc cl, 31
cmp dl, 45
dec dl
and cl, 126
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
adc al, sil
xor al, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
