.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
setno cl
lea rcx, qword ptr [rax]
lea rbx, qword ptr [rcx + rsi]
xor al, 16
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, -47
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
and rcx, 79
bswap rcx
test al, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
