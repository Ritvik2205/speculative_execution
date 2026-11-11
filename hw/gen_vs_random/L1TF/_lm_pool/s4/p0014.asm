.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
sub al, -97
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 7
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 14
sub al, dl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
jmp .bb_0.1
.bb_0.1:
add al, 65 # instrumentation
cmovo rax, rcx
lea bx, qword ptr [rcx + rdi + 83]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
lea rdi, qword ptr [rax + rsi + 57]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
