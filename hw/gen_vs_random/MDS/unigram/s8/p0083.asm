.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 43
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
cmovs rcx, rax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 105
or cl, -77
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
cmovnb rdx, rax
btc eax, eax
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
and dl, 66 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
cmovp ebx, esi
jmp .bb_0.1
.bb_0.1:
or rax, -141551502
xor bl, -88
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], esi
cmovnp rax, rdi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rsi
test ecx, -1843375753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
