.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, 107
mov al, bl
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and al, 41
sbb al, -4
sbb al, -14
sub bx, 24
and rcx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rcx]
inc sil
add cl, al
add dil, -61
cmp al, 105
mov sil, dl
and rax, 86
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and bl, -30
and di, -34
mov bl, al
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
or al, cl
test al, cl
or sil, sil
neg dl
cmovno esi, eax
sub al, 54
jmp .bb_0.1
.bb_0.1:
sbb cl, 12
xor al, -66
or si, 85
adc al, -70
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
xor sil, cl
sub cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
