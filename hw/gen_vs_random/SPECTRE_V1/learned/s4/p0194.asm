.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 44
lea ax, qword ptr [rax]
dec bl
setnb bl
and dl, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test sil, 47
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
sub al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
