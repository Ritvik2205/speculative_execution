.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rcx, -121
cmp al, -116
cmp rax, -1547540200
and bl, -119
or eax, 143573881
or dil, dl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
cmovno di, bx
xor dl, al
and al, 82
cmp dil, al
or ax, -29521
test al, 18
sbb sil, cl
cmp dl, 95
xor ax, 30500
xor ax, 13332
sbb cl, 45
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx], 85
sbb dil, cl
sub sil, -35
and dl, 126
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
xor al, -113
or rax, rbx
xor ax, 20236
dec sil
mov sil, cl
mov cl, -38
sub edi, 89
or bl, 61
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
dec sil
sbb bl, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
