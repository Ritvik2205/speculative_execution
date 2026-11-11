.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
or edi, 32
add dil, -7
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rcx], ax
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
add al, 56
jmp .bb_0.2
.bb_0.2:
test bl, 45
dec edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
