.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 18
xor dil, -42
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -25
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 88
or al, -5
lea rcx, qword ptr [rdi + rax + 39]
bt ecx, eax
setnz dil
xor cl, bl
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 75
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
