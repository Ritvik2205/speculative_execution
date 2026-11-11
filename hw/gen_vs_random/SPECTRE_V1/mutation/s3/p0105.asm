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
xor cl, -40
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rbx
cmovnbe edi, esi
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
cmovl edi, edi
and rdx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdx], -94
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, -29 # instrumentation
add cl, -70 # instrumentation
setnp cl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rcx, -29
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
lea rdi, qword ptr [rdi]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
sub bl, dl
lea eax, qword ptr [rbx + rbx + 18245]
cmp al, 77
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
