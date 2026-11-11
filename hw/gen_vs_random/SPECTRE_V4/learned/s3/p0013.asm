.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -119
cmp di, -8
and dl, dil
cmp rax, -2096157586
sbb bl, -79
and rsi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rsi]
cmp al, -1
adc dil, 109
and bl, dl
and dl, bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
xor ax, 45
cmp dl, dil
xor dl, al
and cl, -128
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
