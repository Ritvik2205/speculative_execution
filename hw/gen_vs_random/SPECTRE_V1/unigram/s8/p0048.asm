.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
add dl, 38 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rax
lea edi, qword ptr [rdi + rdx + 39]
bt rax, 14
and rax, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rax]
mov edx, edi
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rbx]
add edx, 58
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ebx
lea ecx, qword ptr [rsi + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
adc al, -82
lea ax, qword ptr [rbx + rax]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], 117
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
