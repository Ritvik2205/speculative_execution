.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 34
or al, cl
add dl, 22
and bl, 89
btr ax, 51
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
xchg bl, dl
sub al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
