.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg eax, edx
sub dx, cx
xor ax, 30996
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
test dil, -126
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
add dl, cl
jmp .bb_0.4
.bb_0.4:
xor dl, 9
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
