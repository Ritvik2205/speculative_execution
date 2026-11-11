.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rbx]
xor cl, cl
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 20
and rsi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rsi]
add bl, 13 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
add bl, -15 # instrumentation
cmovl rbx, rax
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
mov bx, cx
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], cl
add bl, -61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
xor al, al
cmovl cx, di
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
