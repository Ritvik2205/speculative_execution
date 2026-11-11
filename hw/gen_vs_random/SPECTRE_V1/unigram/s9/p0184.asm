.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rax + rdi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 75 # instrumentation
adc cx, 2
bts bx, 83
or eax, -126
and rdx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
imul cl
add cl, 112 # instrumentation
movzx eax, dil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], si
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rax]
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea ebx, qword ptr [rax]
sbb al, -14
xor rdx, rcx
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
