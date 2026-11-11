.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, al
xor ecx, 33
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
setnle al
inc eax
sbb bl, -41
xor cl, sil
jmp .bb_0.1
.bb_0.1:
add dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
