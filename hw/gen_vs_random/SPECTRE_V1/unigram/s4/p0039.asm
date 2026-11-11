.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], -31
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
dec bx
add cl, -35 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdi]
setp dil
sub ebx, ecx
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdx]
cmp bl, -114
add dil, 33 # instrumentation
setnz dil
cmovnbe bx, ax
bt cx, 3
lea rdx, qword ptr [rdi + rcx + 59295]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rbx]
sub cl, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
