.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rbx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rbx]
or si, 0b1000000000000000 # instrumentation
bsr di, si
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
test dil, 18
test rcx, 19
and sil, 93
and rax, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rax]
cmp rdx, 46
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 0
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
