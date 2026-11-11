.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rbx
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], dx
imul eax
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdi]
sbb sil, -78
lea rax, qword ptr [rax]
and dil, al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
bt eax, edx
cmp dl, al
lea bx, qword ptr [rbx]
sub rax, -1628299544
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
