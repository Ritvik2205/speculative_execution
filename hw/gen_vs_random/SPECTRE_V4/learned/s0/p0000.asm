.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rdi
add cl, bl
cmovz edi, ebx
test al, -24
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], sil
xor ax, 45
sbb bl, al
jmp .bb_0.1
.bb_0.1:
and ax, -197
test dl, -81
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
add dil, dl
sbb al, 57
cmp di, -8
and al, bl
add al, -82
sbb cl, 40
and dil, cl
cmp bx, 113
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
sbb dl, cl
add al, -6
sbb dl, bl
and dl, 124
or al, al
or rax, 1042095162
and bl, dl
sub ecx, -107
xor dl, cl
sub al, 55
xchg cx, di
and al, -124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
