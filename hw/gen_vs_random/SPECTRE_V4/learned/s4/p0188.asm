.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -28
mov al, dil
adc bl, cl
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], -108
sbb dl, bl
jmp .bb_0.1
.bb_0.1:
mov dil, cl
add bl, 54
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 119
sub dl, al
and rax, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rax]
adc al, -70
or al, -47
adc dl, sil
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
or rdi, rdx
xor cl, 13
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
sub bl, -98
sbb dl, -106
sbb dl, -106
add dl, -8
test al, -38
sub dl, -16
btc rdx, rax
adc cl, 6
imul dx, ax, -115
adc cl, -54
cmp al, -44
test eax, 1340292467
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
