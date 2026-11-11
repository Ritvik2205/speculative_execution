.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, -43
xor al, dl
sbb al, 70
and al, dil
add cl, bl
cmp cl, bl
mov al, dil
adc bl, dl
cmp al, cl
add bl, al
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
sbb dil, al
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
adc dl, bl
or si, -84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
