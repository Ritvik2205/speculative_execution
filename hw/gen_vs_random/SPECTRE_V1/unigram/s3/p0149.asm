.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 68
lea bx, qword ptr [rax]
mov dil, al
bts rax, 140
cmovl bx, si
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 51
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
adc dx, 56
test cl, -31
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], cx
mov al, 4
and dil, 96
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
