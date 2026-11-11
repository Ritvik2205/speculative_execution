.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 13
cmovbe rax, rdi
and rax, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 26
jmp .bb_0.1
.bb_0.1:
sbb dx, ax
and rdi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdi]
sub dil, cl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], cl
imul al
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 4
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdx
sub cl, -49
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
