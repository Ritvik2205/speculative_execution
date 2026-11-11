.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, cl
imul rdi, rcx, 92
or al, bl
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
dec dil
test rdx, 1657596343
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
imul dl
setns dil
add dl, -24 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rbx
mov dil, bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
