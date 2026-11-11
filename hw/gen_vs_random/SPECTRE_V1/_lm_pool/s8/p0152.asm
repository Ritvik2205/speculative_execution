.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -120
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
test cl, -120
mov dl, dil
jmp .bb_0.1
.bb_0.1:
xchg bl, dil
jnz .bb_0.2
jmp .bb_0.3
.bb_0.2:
jns .bb_0.3
jmp .exit_0
.bb_0.3:
sbb al, -112
xchg al, dl
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
or al, bl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdx]
adc dil, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
