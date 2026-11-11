.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 24 # instrumentation
lea rdx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rax
xor cl, 78
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rbx
cmovnbe edi, esi
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
cmovl edi, edi
and rdx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdx], -94
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea bx, qword ptr [rdx + rdi + 22131]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
mov dl, cl
and dil, dil
cmovs cx, dx
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -95
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
