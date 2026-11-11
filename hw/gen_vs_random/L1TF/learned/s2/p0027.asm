.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov sil, bl
jmp .bb_0.1
.bb_0.1:
setno dl
xor al, 45
jmp .bb_0.2
.bb_0.2:
sbb bl, dl
sub al, -47
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
lea dx, qword ptr [rsi + rdi + 47468]
xor al, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
