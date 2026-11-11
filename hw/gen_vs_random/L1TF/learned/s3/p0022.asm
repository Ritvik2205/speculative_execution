.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rdx]
jmp .bb_0.1
.bb_0.1:
or bl, -88
xchg rcx, rsi
xor al, 16
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
xor al, cl
jp .bb_0.3
jmp .exit_0
.bb_0.3:
xor bl, dl
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
add al, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
