.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
xor dil, -42
add dl, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], sil
add dl, -70
add al, -117 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], edx
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
lea rdx, qword ptr [rcx + rdi + 88]
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
sub edi, 56
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rbx]
cmovnb di, cx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
