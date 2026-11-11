.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 17
or bl, dil
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test ebx, -2015966884
test cl, -123
and al, 82
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
xor al, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
