.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 70
adc dil, 109
cmp di, -8
and edi, -102
cmp dx, -1
sub dil, 35
and dl, 126
adc cl, sil
sbb cl, 127
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdx
cmp eax, 64
sub bx, 24
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
xor dil, cl
neg dil
sub dl, sil
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
sub bl, 66
bswap ebx
adc dil, al
xor dl, sil
sbb al, sil
sub dx, -12
add al, 40
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
neg cl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
sub al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
