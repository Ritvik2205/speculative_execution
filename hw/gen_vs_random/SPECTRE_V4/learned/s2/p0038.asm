.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and dil, -61
test al, dil
cmovnp ax, cx
cmp al, -44
xor cl, 88
mov al, bl
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and dil, -120
sub bl, 56
xor al, -60
or bl, cl
sub sil, 71
xor dl, al
add al, 19
xchg rcx, rdi
add al, al
xor dl, -123
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
add sil, dil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
test al, -24
and al, 5
sbb dl, 53
sbb bl, -79
add dl, bl
sub al, sil
or dl, bl
test al, 52
add al, -6
sbb bl, al
add bl, -38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
