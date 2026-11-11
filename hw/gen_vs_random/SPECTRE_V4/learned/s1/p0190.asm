.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
and al, bl
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
sbb dil, 41
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
xor rax, -98
xor cl, 13
xor al, cl
cmp al, -122
adc ecx, 114
imul rax, rdi
and al, 41
xor dl, cl
cmp dl, al
adc dil, bl
sub ebx, 12
sbb dl, 53
xor ax, -17712
cmp cl, al
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
