.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rax, rsi
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
sub al, -1
xchg rcx, rax
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
sub al, dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
mov cl, -72
xor dil, al
xor al, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
