.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
sub rsi, rdi
add dl, -4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
setb dl
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rdx], ax
cmp dl, -115
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
add bl, -64 # instrumentation
cmovnle eax, edi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 91
setle dl
and rsi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rsi]
cmovbe dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
