.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ax, di
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -109
cmovnp rsi, rbx
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdi], cx
or rdx, 86
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 71
and cl, -109 # instrumentation
cmovns rcx, rcx
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rcx
jmp .bb_0.1
.bb_0.1:
cmovnp bx, dx
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
bts eax, ecx
and bx, di
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 4
xor rdi, -50
and al, 33 # instrumentation
cmovnle edx, eax
and rsi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rsi]
cmovp ax, si
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 74
bts rsi, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
