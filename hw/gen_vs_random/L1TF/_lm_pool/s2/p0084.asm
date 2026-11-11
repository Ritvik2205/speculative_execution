.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -44
inc dl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
sub cl, 86
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
test al, 15
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 79
add bx, 32
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
sbb dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
