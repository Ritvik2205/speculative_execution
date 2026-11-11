.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 55
sub al, 59
adc sil, 88
and cl, dl
test cl, -31
mov dl, bl
or al, bl
cmovz edi, ecx
test dl, 24
and bx, 67
xor dl, bl
or dl, 71
sub al, dl
sbb dl, -106
add al, -29
xor dx, 7
sbb ax, -30070
sub al, dl
or sil, -47
cmp bl, cl
cmp eax, 1521417271
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
adc al, -86
cmp bl, cl
xor rax, 93
sbb bl, -75
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
sub al, 127
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
cmovbe edx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
