.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
and dil, al
and dl, sil
xor ax, -17712
sub al, 69
add bl, dil
sub dl, -16
xor ax, -6064
cmp al, -116
not al
and al, -1
test eax, 1600638830
and dil, cl
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
sub cl, sil
add cl, -9
adc ecx, 55
xor bl, -126
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
add bl, dil
add rsi, 44
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
cmp al, dil
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
or ax, 7381
sub sil, -35
test cl, -31
or sil, -47
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
