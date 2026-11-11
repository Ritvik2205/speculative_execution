.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 19
sub cl, dil
or al, sil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
xor dil, bl
or eax, 1001462340
adc cl, 31
sbb al, 54
sub dx, ax
and al, -118
or rdi, 43
mov bl, 29
sbb dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
