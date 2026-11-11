.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], ecx
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 102
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], 16
cmovnle si, si
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 23
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
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
