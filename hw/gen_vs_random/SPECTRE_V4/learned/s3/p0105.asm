.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 115
test al, -26
and al, 100
cmp bl, cl
adc dl, al
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
cmp al, sil
add rax, -874478885
sbb edi, 107
test bl, cl
cmp al, -122
adc dl, 2
and al, -12
cmp dl, sil
and dl, 126
adc dl, dil
cmp rax, 40
adc cl, -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
