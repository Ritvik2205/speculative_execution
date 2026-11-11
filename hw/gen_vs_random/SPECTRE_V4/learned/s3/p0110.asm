.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
mov cx, -22668
sbb sil, -11
sbb al, 102
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
test ecx, -1293796332
inc al
or cl, cl
and cl, 126
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
mov dl, sil
cmp al, dil
xor al, sil
cmp al, -53
and rax, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rax]
xor ax, 30500
adc dl, sil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
or sil, cl
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
cmp dil, 53
or al, sil
sbb dil, 18
or cl, al
sbb dl, 53
xchg cl, bl
sub dl, -16
test cl, -31
cmp rax, 2052654950
mov cl, 14
cmp al, -106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
