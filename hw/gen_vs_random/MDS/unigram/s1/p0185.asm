.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdi]
and sil, cl
btc rdi, 221
or ax, -7150
cmovns ax, cx
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], ax
and cl, cl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 74
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rbx]
cmovo rcx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rax], ax
not dl
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 45
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
