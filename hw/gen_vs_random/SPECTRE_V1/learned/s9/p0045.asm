.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 6
lea rax, qword ptr [rcx]
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp al, dil
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
jno .bb_0.2
jmp .exit_0
.bb_0.2:
sub cl, -47
lea dx, qword ptr [rdi + rsi]
adc bl, sil
and dl, -109
xor bx, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
