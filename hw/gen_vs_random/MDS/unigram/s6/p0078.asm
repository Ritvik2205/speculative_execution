.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdx]
cmovnp rdx, rsi
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 87
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
bt eax, esi
cmovl dx, si
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rdi
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
or dx, 0b1000000000000000 # instrumentation
bsr bx, dx
and bl, -123 # instrumentation
cmovnp di, bx
and al, 20 # instrumentation
cmovp ax, bx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
cmovp edx, ecx
and rdx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
cmovnp bx, bx
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rax], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
