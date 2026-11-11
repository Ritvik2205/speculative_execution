.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
xor dl, sil
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], al
xor dil, -37
xor al, -89
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], -99
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
adc bx, 70
jrcxz .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, al
and cl, cl
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 73
cmovno bx, si
and al, -54
sub sil, -18
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
