.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 5
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
add al, bl
xor dx, cx
and al, 92
adc cl, 31
add bl, 54
or ebx, -78
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
xor al, cl
or ax, 48
xor cl, al
mov cl, bl
sub dil, 65
or dil, 5
cmp al, 105
cmp bl, cl
and dil, cl
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
sub rdi, 105
cmp esi, -84
xor cl, -73
or cl, sil
cmp al, sil
sub dl, al
sub di, 9
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
and bl, al
and cl, -118
and rax, 86
mov dl, sil
and dil, -120
or dl, 71
sub dil, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
