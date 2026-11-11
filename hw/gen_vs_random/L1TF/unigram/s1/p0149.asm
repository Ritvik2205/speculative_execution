.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 47
lea rsi, qword ptr [rax + rdx + 10]
mov dx, 24
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
mov ax, 56
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
add dl, 89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 99
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rbx]
setnb al
or bl, 61
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 7
lea dx, qword ptr [rdx + rax]
setnp cl
cmovnbe dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
