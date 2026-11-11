.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
lea rbx, qword ptr [rcx + rdi + 19]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 70
sbb eax, -108
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], sil
cmovnp rdx, rbx
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rbx]
test cl, -120
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 38
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
test cx, -17886
cmovnl ecx, edi
test ebx, -1465665890
xor cl, cl
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
