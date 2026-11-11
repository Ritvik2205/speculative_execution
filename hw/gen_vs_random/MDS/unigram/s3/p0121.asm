.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and di, 91
btc rsi, rdi
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rdi
cmovnp rdx, rsi
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 99
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rax
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdi
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
and rsi, 73
and ecx, -104
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rax
and dl, 21 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
and bl, 96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rax]
xor dl, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
