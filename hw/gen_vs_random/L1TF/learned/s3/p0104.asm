.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
test al, -84
dec al
dec bl
cmovb ax, dx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], ax
jmp .bb_0.2
.bb_0.2:
and edx, 22
mov dl, cl
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
sbb rdx, 98
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
