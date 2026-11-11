.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 85
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
sbb sil, -78
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and eax, 933895314
and rdx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdx]
sub cl, al
sub dx, -23
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
