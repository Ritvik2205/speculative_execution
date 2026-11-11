.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, cl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
cmp al, -78
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
add cl, sil
jmp .bb_0.1
.bb_0.1:
test ecx, -907816607
or ax, 27604
cmp ebx, -27
sub al, 69
btc rdx, rcx
adc cl, dl
adc sil, dl
sub cx, -114
xor cl, -15
cmp rax, 1682181214
sbb al, -3
sub dl, al
and rdx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdx]
sbb bl, cl
mov al, cl
sub rdx, 45
sub al, cl
xor ax, -22861
mov sil, dil
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
add sil, dl
xor dil, 117
cmp cl, -105
add cl, dil
sub al, -84
adc bl, dl
and cl, 32
dec al
jmp .bb_0.2
.bb_0.2:
xchg ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
