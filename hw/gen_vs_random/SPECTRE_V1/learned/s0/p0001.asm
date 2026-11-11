.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 18
lea dx, qword ptr [rcx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
sbb dl, al
and al, dil
jns .bb_0.2
jmp .exit_0
.bb_0.2:
sbb ecx, 81
sub al, dil
test al, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
