.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 90
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rsi]
and cl, -101
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 28
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -90
test rax, 1732677821
and rax, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rax]
or al, -48
jmp .bb_0.1
.bb_0.1:
cmovl rax, rdi
and cl, -109 # instrumentation
cmovns rax, rax
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], esi
cmovno si, dx
bt bx, 75
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
or rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
