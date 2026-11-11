.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
sub al, dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
add dil, -7
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
xor dil, cl
jmp .bb_0.1
.bb_0.1:
add al, 39 # instrumentation
lea ax, qword ptr [rcx]
xor cl, al
jmp .bb_0.2
.bb_0.2:
lea bx, qword ptr [rsi]
jmp .bb_0.3
.bb_0.3:
and di, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
