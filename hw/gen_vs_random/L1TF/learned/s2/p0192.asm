.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, bx
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi], 52
add al, 56
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
test rbx, rcx
xor al, dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 53
bt ecx, edi
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
