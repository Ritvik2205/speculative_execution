.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -33
and dl, -92
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
mul rcx
or al, 19
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
sbb bl, al
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
mov sil, 57
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
sub di, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
