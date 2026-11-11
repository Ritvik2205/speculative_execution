.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 65 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 6
inc ax
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], -31
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
adc al, dil
dec dl
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
add rdx, rcx
cmp ebx, 100
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], -52
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
imul esi, ebx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
dec bl
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 36
cmovnz rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
