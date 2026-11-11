.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -32
test al, -38
xor al, -113
or rax, -943474997
btc rax, rdi
or cl, cl
and al, cl
cmp cl, -80
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
cmp dl, dil
adc al, 43
or dil, -104
cmp dil, -29
and al, 100
cmp cl, -105
adc al, -70
and dil, 8
dec cl
add al, cl
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx]
inc cl
xor ax, 15671
add al, -112
cmp al, -122
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
mov cl, dil
bt dx, si
inc cl
sub sil, 71
sub al, dil
or eax, -1213318393
sbb bl, cl
and ax, 4
cmp dl, 83
adc dil, 109
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rax, 1827025056
and al, bl
cmp al, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
