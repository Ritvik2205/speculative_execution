.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 29
xchg ecx, ebx
sbb bl, -75
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
sub dl, -16
sub al, 127
xor al, -66
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
and al, 92
dec dl
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 5
mov sil, 51
xor cx, -80
xor sil, dil
add al, al
cmp bl, cl
sub al, 59
sub al, 54
add bl, cl
and al, dil
mov dl, al
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], sil
add cl, al
cmp al, -122
and dl, -11
test edx, -38580719
cmp cx, 0
and cl, sil
sub al, sil
and cl, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
