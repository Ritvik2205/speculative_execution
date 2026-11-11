.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul dl
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], dx
lea dx, qword ptr [rsi + rcx + 45165]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 89
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
sub bl, -96
add al, 104 # instrumentation
mov eax, 89
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
setbe bl
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
lea edx, qword ptr [rdi + rdx + 57]
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rax
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
lea ax, qword ptr [rax + rbx + 6]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
