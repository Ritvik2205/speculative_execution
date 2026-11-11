.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 63
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and al, dil
cmovnle rcx, rax
cmp sil, dil
sbb dl, 127
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
test al, -99
jns .bb_0.2
jmp .exit_0
.bb_0.2:
xor al, dl
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi], 96
test dl, -36
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
