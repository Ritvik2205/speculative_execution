.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
xchg al, al
btr rbx, 2
xor cl, dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
setns al
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
cmp al, -77
and sil, 52
jb .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
