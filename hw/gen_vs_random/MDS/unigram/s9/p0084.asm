.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rcx, -2
bt rbx, rcx
cmovnl ecx, edi
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
not cl
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
not al
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
cmovno bx, dx
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
and rdi, rsi
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rax
test ax, 4430
test di, 87
bts rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
