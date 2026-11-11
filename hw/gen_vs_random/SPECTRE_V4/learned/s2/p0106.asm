.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
sbb al, -47
adc rdx, 61
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
cmp cl, 62
or edx, -127
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
sbb dl, al
setnl cl
sbb dl, al
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 8
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
cmovz di, si
adc bx, bx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
xor cl, cl
add cl, -82 # instrumentation
sbb si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
