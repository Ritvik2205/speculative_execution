.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rbx
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
xor bx, 26
cmovnz cx, cx
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi], 33
cmovo rdi, rsi
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edx
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
adc edx, 73
and rcx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
