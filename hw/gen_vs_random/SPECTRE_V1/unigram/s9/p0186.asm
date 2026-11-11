.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb sil, sil
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
sbb dl, cl
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax]
cmp rbx, 34
seto cl
lea bx, qword ptr [rbx]
add bl, dil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
btc ecx, 31
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edx
and rsi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rsi]
neg cl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
lea rdx, qword ptr [rcx + rdx + 44106]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
