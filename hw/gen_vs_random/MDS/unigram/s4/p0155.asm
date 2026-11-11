.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
or dl, -89
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
and al, -83 # instrumentation
cmovnp rdi, rdx
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
test bl, al
jmp .bb_0.1
.bb_0.1:
test bl, -114
not di
cmovnz di, ax
and bl, 61 # instrumentation
cmovl cx, bx
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
not al
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
