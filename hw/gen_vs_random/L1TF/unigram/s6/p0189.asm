.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rax]
or bx, 90
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
sub rax, -15
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rbx
test dil, dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
add dl, 27 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 79
sbb dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
