.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, edi
setp al
imul al
sub al, -3
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
mov al, dl
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
test cl, 29
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
