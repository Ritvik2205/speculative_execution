.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, rbx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 43
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
cmovl ebx, esi
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
xor cx, -18
and rcx, -63
and dl, 84 # instrumentation
cmovle ax, si
and rax, -636362975
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 23
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
xor rcx, 71
cmovnp rdx, rdx
and rax, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
btc ebx, 149
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
or rsi, 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
