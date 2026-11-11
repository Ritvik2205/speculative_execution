.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
xor eax, 55
or sil, dil
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
test cl, -120
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
js .bb_0.2
jmp .exit_0
.bb_0.2:
or al, sil
add ax, 6980
sbb al, 66
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
test dl, -105
lea bx, qword ptr [rdx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
