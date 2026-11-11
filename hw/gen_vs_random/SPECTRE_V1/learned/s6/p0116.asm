.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -23
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rbx, qword ptr [rdx + rdi + 15]
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
cmp al, 62
test cl, -120
add al, cl
add cl, -127
lea rcx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
xor cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
