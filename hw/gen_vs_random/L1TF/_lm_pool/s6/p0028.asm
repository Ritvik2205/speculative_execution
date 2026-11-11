.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 20
imul al
xor al, sil
jmp .bb_0.1
.bb_0.1:
or dil, bl
jmp .bb_0.2
.bb_0.2:
cmp cl, -89
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
sbb sil, -19
cmovs ax, cx
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
