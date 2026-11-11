.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
sub bl, dl
sub bl, al
test cl, -24
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
test bl, -8
mov bl, cl
mov al, sil
sub dil, -32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
