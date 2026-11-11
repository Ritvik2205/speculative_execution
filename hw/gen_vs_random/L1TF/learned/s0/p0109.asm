.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -64 # instrumentation
cmovnle eax, edi
or al, -5
or dl, bl
and cl, cl
add dl, -1
sbb dl, al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
sub bl, sil
jmp .bb_0.2
.bb_0.2:
lea rdx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
