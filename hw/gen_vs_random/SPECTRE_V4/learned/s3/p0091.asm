.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
sub al, -128
cmp ebx, -27
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
cmp al, -122
sub edi, 47
xor dl, dil
sub al, 26
sbb al, -14
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and dl, -53
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rdx
sub sil, cl
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
sbb al, 57
sub rax, 120
xor bl, -126
add al, sil
test edx, 1479885278
cmp ecx, 83
sub dl, 107
cmp ax, -18179
and rdi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdi]
and dl, 24
cmp bl, al
xor ax, 13329
adc cl, dil
lea ecx, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and al, -87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
