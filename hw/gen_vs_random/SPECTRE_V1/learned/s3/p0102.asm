.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
cmp rax, -1365488374
or ebx, -124
and bl, al
add sil, al
and al, -54
sbb dil, cl
adc cl, dil
and dl, dl
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
