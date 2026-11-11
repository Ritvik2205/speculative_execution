.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdx, rdi, 68
mov bl, cl
or ebx, -124
add dl, -68 # instrumentation
add dl, 54 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
test edx, 69
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
cmovz edx, ecx
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
add cl, -18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 66
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], 40
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dil
dec rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
