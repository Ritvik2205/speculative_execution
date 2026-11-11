.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ecx, -38
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
cmovbe rax, rcx
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 18
cmp rbx, rax
lea ebx, qword ptr [rdi + rdi]
mov rcx, rdx
and ax, -13240
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
cmovno rcx, rax
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], 49
and rax, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], -32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
