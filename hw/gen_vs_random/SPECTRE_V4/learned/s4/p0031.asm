.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -26
sbb al, 57
adc edx, -86
cmp al, 105
dec al
test ecx, -907816607
and rsi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rsi]
xchg dil, sil
or cl, -55
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
or dl, cl
adc dl, 72
sub cl, sil
xor edx, 79
and dl, 124
add al, -6
or dl, 71
sbb bl, 121
cmp al, -53
sub al, 59
mov dil, bl
sub cl, -94
sub dl, bl
xor al, -120
xor sil, 40
sub al, cl
add ebx, -57
adc al, sil
and rdi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdi]
add ax, -7857
sbb bl, 121
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
test dx, 28394
cmp bl, sil
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
