.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, al
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
inc rbx
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
sbb cl, 105
lea cx, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
add sil, bl
and rax, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
