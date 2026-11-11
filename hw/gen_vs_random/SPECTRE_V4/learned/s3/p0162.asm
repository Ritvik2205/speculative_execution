.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
xor di, bx
test cl, 78
cmp al, -53
and al, 75
btc rbx, rdx
adc al, cl
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], cl
and sil, -84
add dil, dil
neg cl
and ax, -4731
adc dl, dil
adc dil, bl
and al, -1
add al, -3
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
cmovno ax, dx
sub sil, 71
adc dil, al
movsx dx, cl
mov cl, 14
and dl, -11
cmp dil, al
and dil, -120
add eax, -1628652110
or al, sil
cmp rax, -1070057082
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
