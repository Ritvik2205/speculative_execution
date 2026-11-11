.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, ax
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ecx
cmovns dx, di
or eax, 1725503461
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 91
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rbx
btr rdx, 80
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rbx], si
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
or sil, -49
cmovnbe ebx, eax
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], edx
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rsi]
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
btc si, si
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
