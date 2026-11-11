.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
sub rax, -2089384489
and rdi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
or al, dil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
add cl, 65 # instrumentation
cmovo rcx, rdx
sub dl, -34
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
