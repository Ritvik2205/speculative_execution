.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
cmovnb rcx, rsi
and ax, 37
xor al, dl
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -114
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
jmp .bb_0.2
.bb_0.2:
or bl, dl
sub dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
