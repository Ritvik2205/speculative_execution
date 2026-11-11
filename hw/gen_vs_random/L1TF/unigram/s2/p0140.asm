.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 125 # instrumentation
cmovbe rax, rax
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
neg rax
xchg ecx, eax
btr rdx, 203
cmovl di, di
add dl, 42 # instrumentation
lea ebx, qword ptr [rdx + rbx]
xchg ebx, esi
and rax, 1163013815
sub cl, 86
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
