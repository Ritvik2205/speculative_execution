.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, di
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
sub bl, cl
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
movzx dx, dl
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdi
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rdi
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
cmovnbe rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
