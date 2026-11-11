.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
sbb bx, 53
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
btc esi, esi
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rsi
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 15
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and bl, 89
mov cl, cl
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
