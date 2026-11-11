.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
mov dl, al
sub al, 26
jmp .bb_0.1
.bb_0.1:
lea dx, qword ptr [rdi + rsi + 84]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 27
xor ax, 22976
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
xor eax, -69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
