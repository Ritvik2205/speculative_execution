.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 53
test al, -26
and al, -1
cmp sil, dil
or eax, 1470564945
adc dl, al
and al, -1
xor si, dx
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
xor rcx, -111
add al, -112
cmp si, 109
and cl, cl
and rbx, 47
cmp al, 115
xor dil, bl
xor al, 106
adc dil, cl
sbb ax, 75
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
adc al, bl
adc al, bl
or sil, dl
sub dil, -28
xor bl, 27
and al, 82
mov dl, al
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
cmp al, 114
cmp al, 109
sub dil, dl
and dl, -53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
