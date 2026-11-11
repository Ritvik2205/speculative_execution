.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 76
cmp dil, cl
sub sil, cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
sub al, 29
or cl, cl
xchg esi, edx
cmp al, 116
add rax, 114
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
xor dl, sil
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
and bx, 7
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
and bl, al
and dl, -11
cmp dil, cl
and rsi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rsi]
xor sil, 23
or al, -47
xor dl, cl
bts bx, 102
sub edi, 61
mov cx, -22668
sbb dl, 53
mov cl, dl
bt cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
