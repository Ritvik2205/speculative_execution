.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec bx
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and di, 82
sub al, bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
add al, -65
setle cl
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
