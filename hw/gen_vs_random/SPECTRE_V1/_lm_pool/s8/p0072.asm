.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
cmp sil, bl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
lea ecx, qword ptr [rax]
jno .bb_0.2
jmp .exit_0
.bb_0.2:
lea ax, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], di
setz cl
mov al, cl
lea dx, qword ptr [rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
