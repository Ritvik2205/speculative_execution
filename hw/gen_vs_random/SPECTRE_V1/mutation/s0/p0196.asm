.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rbx
add dl, 24 # instrumentation
lea rdx, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdx], -94
cmovl edi, edi
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
xor cl, -40
cmovnbe edi, esi
and rsi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
lea rdi, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
add cl, -29 # instrumentation
add cl, -70 # instrumentation
setnp cl
and rcx, -29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
