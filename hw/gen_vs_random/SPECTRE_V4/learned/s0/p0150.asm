.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
dec al
test eax, -251558852
or dl, al
xor bl, al
sub dl, al
or dil, 5
adc rax, 310915511
or al, dl
and rdi, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rdi]
or dl, dil
sub sil, -35
cmp dl, dil
xor al, 57
sbb al, 70
sub al, 63
cmp al, dl
sub al, 29
add dl, 109
cmp al, 105
inc al
neg bl
add sil, al
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
cmp dl, bl
and ax, 26513
sub dil, -28
and dil, -61
sub cx, -114
add cl, -9
adc dl, 83
adc bl, dil
add bl, bl
xor dl, -123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
