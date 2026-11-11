.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
and rax, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rax]
sub al, -84
sub dl, sil
movsx cx, al
dec bl
sub dl, -16
xor al, bl
sub dx, bx
cmp al, cl
cmp dl, bl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
mov bl, sil
sub dl, 107
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
xchg cl, dil
or al, dil
and al, 41
xor dil, al
xor si, -73
cmp sil, -100
mov sil, bl
test cl, -52
adc cl, sil
cmp cl, dil
and cl, bl
sub dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
