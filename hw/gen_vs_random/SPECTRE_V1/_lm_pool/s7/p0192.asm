.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
add al, 3
sub rdi, 95
test dil, -116
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
test dl, -105
cmp dl, dil
jmp .bb_0.1
.bb_0.1:
test cl, -24
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
