.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
sub sil, -99
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 25
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
imul rcx
lea edx, qword ptr [rsi + rdx + 43]
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
sbb cx, 36
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
lea edi, qword ptr [rdi + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
add cl, 6 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
