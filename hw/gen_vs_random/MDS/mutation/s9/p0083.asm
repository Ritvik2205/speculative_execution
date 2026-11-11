.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, 302048971
or rcx, 54
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -117
xor al, 8
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
or cl, cl
bts eax, 222
and cl, 52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
xor dil, cl
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
bt rax, rax
xor al, 99
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
and dl, 84 # instrumentation
cmovl rax, rdi
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
