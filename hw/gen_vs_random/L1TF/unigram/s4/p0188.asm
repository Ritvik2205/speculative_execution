.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
add al, cl
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi]
lea rax, qword ptr [rax + rcx + 29]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 48
adc bl, -14
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
add dl, -125 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
cmp dl, -93
test si, cx
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 52
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rax
add dil, -23 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
