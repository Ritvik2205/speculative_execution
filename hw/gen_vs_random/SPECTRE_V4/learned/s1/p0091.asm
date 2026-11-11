.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 22
or bl, sil
sbb dil, 80
test eax, 1600638830
xchg rdx, rdi
cmp al, 75
xchg rax, rcx
dec bl
sub al, 86
adc bl, -58
sub al, 96
sbb ax, 1843
sbb al, -4
and al, -124
xor dl, bl
sub bl, cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
xchg cl, dl
cmp rdx, -49
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 33
sbb bl, -79
xchg rbx, rcx
test al, 52
mov al, 82
sbb dil, cl
and dl, cl
xor ax, -6064
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
