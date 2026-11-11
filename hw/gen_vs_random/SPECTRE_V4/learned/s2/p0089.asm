.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rdi]
and sil, -84
sub bl, cl
add dil, al
mov dl, cl
or al, cl
test edx, -38580719
adc al, sil
cmp esi, -84
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
sub dil, -40
cmp cl, 49
and dl, -104
xor cx, -80
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
and dil, bl
mov cl, -38
or sil, cl
sub ax, 23
test eax, 1600638830
adc dl, dil
xor al, cl
cmp dl, 23
test cl, dil
sub bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
