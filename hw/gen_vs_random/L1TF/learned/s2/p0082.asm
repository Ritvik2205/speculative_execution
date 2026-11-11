.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
sub ax, cx
sbb sil, al
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
dec bl
jmp .bb_0.4
.bb_0.4:
lea rbx, qword ptr [rdi + rcx]
and ax, 7954
xor dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
