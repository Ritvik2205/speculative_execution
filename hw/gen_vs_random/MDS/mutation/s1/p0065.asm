.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, sil
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
bts bx, si
bt di, cx
and al, -87 # instrumentation
cmovo ax, di
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rbx, rdx
cmovo ebx, edi
cmovno rdx, rsi
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rax
cmovnle esi, eax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], -12
cmovl rsi, rsi
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 73
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
