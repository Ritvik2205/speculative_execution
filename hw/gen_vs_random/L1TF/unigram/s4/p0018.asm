.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi + rax + 51]
mov bl, bl
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
or bx, 78
add dl, 43 # instrumentation
lea rdx, qword ptr [rbx + rax]
btc si, 79
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 10
cmp rbx, rbx
cmovnb rdi, rdi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 53
add cl, 59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rcx]
sbb ebx, 45
setnb bl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
