.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdi, rcx
and rax, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 87
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 63
add dl, 125 # instrumentation
cmovbe rdi, rdi
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rbx
lea rsi, qword ptr [rsi + rdx]
test eax, edi
cmp cl, -89
cmp ebx, ebx
and rsi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rsi]
movzx ax, dil
inc edi
movsx ebx, dx
bts ax, 201
setl dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
