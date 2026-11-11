.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, bl
cmp dl, 95
bts edx, 116
and edi, -102
sbb al, 95
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
sub bl, sil
sub al, sil
inc eax
cmp rbx, -66
sbb dl, -71
and cl, -128
mov dil, al
sub sil, -35
sub ax, -1393
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
test ebx, 15
and al, -12
adc al, dil
cmp dl, 95
xor bl, cl
adc dl, 90
cmovnb eax, ebx
xor dl, sil
not dl
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
sbb dl, 53
sub cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
