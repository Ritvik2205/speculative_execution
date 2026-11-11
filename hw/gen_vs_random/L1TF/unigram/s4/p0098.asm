.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc al, dil
test cl, 17
adc sil, 76
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
add sil, 55 # instrumentation
lea esi, qword ptr [rax + rcx + 68]
dec ax
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ecx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
xor bx, 98
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
add bl, 37 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 43
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
