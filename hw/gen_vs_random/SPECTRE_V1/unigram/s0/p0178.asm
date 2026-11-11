.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp cl, al
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
movzx bx, dl
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rax], dx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cdq
imul bx, ax, 29
sbb ecx, 73
and edi, edi
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rsi
sbb sil, bl
sbb eax, 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
