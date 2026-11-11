.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, bl
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
xor cl, 78
and dl, -111
sub al, -82
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
and sil, 11
and sil, sil
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
