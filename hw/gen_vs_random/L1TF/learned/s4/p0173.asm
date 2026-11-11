.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ecx
sbb dl, dl
dec di
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
cmovp rcx, rbx
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
add bl, -19 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 31
sub al, 88
imul bl
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], -291743506
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
