.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
and cx, 74
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rax]
sub dil, al
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
setl sil
cmp dl, 71
loope .bb_0.1
jmp .exit_0
.bb_0.1:
or dil, 98
or ebx, -124
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
xor dl, dl
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], 52
lea bx, qword ptr [rbx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
