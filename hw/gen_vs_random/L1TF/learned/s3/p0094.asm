.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 127
xor di, 41
lea rsi, qword ptr [rcx + rcx + 8]
sub cl, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 82
inc eax
btc ax, dx
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
cmp dil, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
