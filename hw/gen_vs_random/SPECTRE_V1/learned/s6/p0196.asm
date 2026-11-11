.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
lea ax, qword ptr [rdx]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 78
cmp al, sil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ebx
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
adc cl, dl
and sil, 111
test dil, -116
not ecx
sub bl, dl
adc dl, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
