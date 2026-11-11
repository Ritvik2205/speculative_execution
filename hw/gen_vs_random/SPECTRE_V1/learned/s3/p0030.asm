.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rcx]
sbb sil, -78
sub cl, -21
sub bl, -6
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
and dil, dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xor cl, cl
xor dx, -128
sub al, bl
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
