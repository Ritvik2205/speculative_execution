.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
adc sil, -112
dec cl
mov cl, bl
and dil, -120
and dl, 24
add dl, 109
adc al, cl
xor al, cl
cmp al, -53
and bl, 76
cmp al, cl
cmp al, cl
xor dil, dl
cmp al, -122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
