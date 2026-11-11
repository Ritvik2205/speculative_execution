.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, sil
test bl, 84
or dl, 8
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
lea bx, qword ptr [rdx]
jmp .bb_0.2
.bb_0.2:
test bl, 12
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 77
sub al, bl
and rax, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
