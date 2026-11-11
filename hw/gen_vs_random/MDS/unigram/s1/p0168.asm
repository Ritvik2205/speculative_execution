.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rdi]
and bl, 49 # instrumentation
cmovp rsi, rbx
or sil, -49
or cl, cl
or rcx, rdi
and al, al
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
and cl, 122 # instrumentation
cmovl edx, edx
btc ebx, ecx
cmovnz eax, edx
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
and bl, -89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
test rax, rsi
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
xor dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
