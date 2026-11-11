.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
sub sil, -99
mov edx, ecx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
cmp ax, -31327
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
xor cl, 89
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 3
setb dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
