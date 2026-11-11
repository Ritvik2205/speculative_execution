.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 104 # instrumentation
mov edi, 15
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
test dl, -37
sbb bl, dl
bts edi, 31
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
lea di, qword ptr [rsi + rax]
sub rax, -2089384489
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
