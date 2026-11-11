.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe ecx, ecx
cmovnbe rbx, rbx
or sil, al
and rsi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 34
or dil, -76
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
bt eax, edx
and rsi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 42
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rdi
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rsi]
cmovl edx, ebx
btc si, 99
and dl, 116 # instrumentation
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
or bl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
