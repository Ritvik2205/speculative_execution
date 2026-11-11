.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rax], eax
or rcx, 55
and cl, -63
and sil, -94
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
and ax, bx
and rdi, 56
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
cmovnl di, bx
jmp .bb_0.1
.bb_0.1:
bt eax, edx
and al, -56 # instrumentation
cmovl rdi, rax
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 66
or bl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
cmovnb si, si
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 59
bts esi, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
