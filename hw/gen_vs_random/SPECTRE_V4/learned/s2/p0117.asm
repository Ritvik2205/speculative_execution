.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -94
add dil, bl
xor al, al
or al, sil
and rax, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rax]
adc bl, cl
dec bl
cmp bl, dl
sub dl, 107
and al, 5
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
adc bl, dil
xchg edx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
