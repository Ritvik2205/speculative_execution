.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ax, cx
or ax, ax
lea rdx, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
cdq
and rdx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdx]
add al, 22 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
and si, 5
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 4 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
lea ebx, qword ptr [rbx]
neg rdi
test si, cx
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], si
lea bx, qword ptr [rax + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
