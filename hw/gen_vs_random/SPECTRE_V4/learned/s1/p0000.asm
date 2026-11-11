.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 85
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
cmp bl, dl
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
cmp bl, cl
sbb bl, -98
movsx di, al
xor ax, dx
or al, -50
xor al, -66
and rdi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rdi]
xor cl, bl
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 1
adc dil, 38
sub sil, cl
mov al, dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
adc dil, al
and dl, -53
sbb al, -52
and al, -118
mov dl, -124
or bl, al
sub dl, -16
sub edi, 77
and dil, cl
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
cmp cl, 49
sbb ax, 18812
sub dl, 107
adc al, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
