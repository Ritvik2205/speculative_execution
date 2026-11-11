.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, dl
lea rbx, qword ptr [rdx + rdx]
or al, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and di, 43
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
or cl, al
or al, al
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
sub al, -97
add dil, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
