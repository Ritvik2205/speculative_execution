.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 4
dec dil
cmp al, 105
and bx, 53
test al, bl
sbb cl, 40
cmp cl, al
sbb dl, 53
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
cmp bl, dil
xor al, -66
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
and al, dl
xor cl, -15
not cl
sbb ax, 1843
cmp al, dil
or al, bl
inc sil
sub al, cl
or dl, -26
xchg ebx, edx
adc bl, dil
or eax, 1470564945
jmp .bb_0.1
.bb_0.1:
sub dl, -16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
