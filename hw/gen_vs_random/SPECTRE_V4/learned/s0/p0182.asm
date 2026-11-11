.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
sub bl, -89
or eax, 185586366
xor dl, dil
cmp cl, 49
mov dil, cl
jmp .bb_0.1
.bb_0.1:
add al, -29
sub ax, si
sbb dl, bl
add bl, dl
xor al, -84
test al, 57
xchg rdi, rbx
cmp al, -122
xor dil, al
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and ax, -14374
xor dl, al
sub dl, al
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
imul ax, cx, 48
cmp al, 105
and dil, al
and sil, dil
xor di, 72
dec sil
or al, al
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
sbb al, 66
and dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
