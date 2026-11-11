.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, bl
adc sil, -77
sub al, 63
sub al, dl
xchg al, bl
lea bx, qword ptr [rcx]
mov dl, al
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -39
sub bx, 38
test al, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
