.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, 1097504565
cmp dil, cl
add dl, 109
adc cl, -85
add bl, -38
sub al, 96
adc dl, al
or dl, -26
and al, sil
or rdx, 1
sub al, cl
test esi, -2111618709
bts ax, 159
sub bl, cl
cmp bl, -79
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 111
xchg dl, al
or rdi, -41
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
sub al, 86
adc cl, -54
sbb ecx, 52
cmp al, -53
test ebx, 49
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 69
imul rax, rbx, 61
sbb al, -52
cmp al, 105
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 42
movsx ax, dil
sbb sil, 24
or dl, bl
sbb bl, al
or sil, -47
sbb bl, 121
sbb al, 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
