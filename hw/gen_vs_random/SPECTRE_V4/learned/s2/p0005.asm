.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 17
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
bt dx, cx
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
add dl, -10 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
xor rbx, rdx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 92
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rsi
cmovs rdi, rax
cmp al, -52
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
