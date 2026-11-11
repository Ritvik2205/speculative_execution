.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, cl
xchg eax, ecx
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
sub cl, dil
sub al, 96
sbb dil, 33
jmp .bb_0.1
.bb_0.1:
adc dil, 124
sub cl, 78
cmp eax, -1538116527
cmp bl, al
and dl, dl
sbb bx, 94
and cl, dil
dec bl
and sil, -84
not dil
sbb ax, 18812
add cl, dil
and al, dil
and al, -118
add dil, dil
adc dl, dil
and ax, 26513
and cl, al
adc cl, -54
and cl, -128
xor dx, -43
cmp bx, 113
mov dil, al
add dil, bl
adc rbx, 60
cmp al, 116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
