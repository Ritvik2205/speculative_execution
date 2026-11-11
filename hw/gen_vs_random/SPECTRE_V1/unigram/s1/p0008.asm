.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 91
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dl
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 50
and rbx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi]
sub dl, al
loope .bb_0.1
jmp .exit_0
.bb_0.1:
cmp di, 43
movzx si, al
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
not edx
test dl, 113
xor rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
