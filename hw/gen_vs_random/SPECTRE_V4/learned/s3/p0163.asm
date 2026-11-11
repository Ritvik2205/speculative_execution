.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, al
xor bl, dil
cmp al, -53
sub cl, sil
or al, -19
xchg al, al
add eax, 953442933
sub dil, -11
cmp al, 109
sbb al, -14
sub al, cl
xor dl, -123
sub sil, 71
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
sub al, 59
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
cmovnb esi, ecx
test cl, -31
imul rdi, rax, 99
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
adc dil, -48
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
xor al, cl
xor ax, 20236
add sil, cl
xor al, al
and al, 49
sub al, 86
and cl, -118
mov al, dil
dec dil
and bx, 33
cmp eax, 512128713
or dil, 5
xor rax, -117
sub rsi, -89
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
xor al, dl
test ax, -6841
or eax, -863161215
add edx, 89
cmp al, -106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
