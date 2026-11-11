.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 119
sub si, dx
neg al
and al, cl
add cl, -9
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
cmp dl, bl
cmp esi, 123
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
adc al, cl
test eax, 1340292467
and dil, -61
mov bl, al
add al, -6
and cl, 126
add bl, bl
or cl, dil
and si, -74
or rbx, -108
or rsi, -5
mov cl, sil
mov cl, al
sbb sil, 24
xchg bl, cl
jmp .bb_0.1
.bb_0.1:
adc dil, sil
and bl, -30
mov dl, sil
and ax, -14374
cmp dil, 101
mov dil, 81
test bl, al
sub al, 0
sub al, bl
add dil, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
