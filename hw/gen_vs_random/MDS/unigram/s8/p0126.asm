.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 74
xor al, cl
cmovb ax, cx
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
test cl, 101
or edi, -88
and rdx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdx]
btc rax, rax
and rax, rbx
test rbx, 77
cmovbe bx, di
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
test dil, bl
bt dx, 228
cmovnle rdi, rbx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
and rax, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
