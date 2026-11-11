.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and dl, 17
sbb al, -61
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and cl, 11
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
or bx, dx
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
add sil, 40 # instrumentation
lea si, qword ptr [rcx + rcx]
bts rax, 140
mov dil, 10
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edi
xor si, 23
and rdx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdx]
add dl, 46
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
