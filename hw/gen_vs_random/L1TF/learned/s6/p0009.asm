.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rsi, rsi
sub al, -75
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
test al, 15
cmp dx, 12
and dil, al
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rdx]
and al, -68
add dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
