.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, dx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 41
cmovb esi, esi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 78
cmovl ecx, ebx
and dx, ax
btc ecx, ebx
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 121
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
test cl, dil
cmovl edx, ecx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], dx
and rdi, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rdi]
lea ecx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
