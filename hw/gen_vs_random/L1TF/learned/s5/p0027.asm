.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
cmp rax, 16650668
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
xor di, 58
xor bl, dl
jmp .bb_0.1
.bb_0.1:
cmp di, -78
btr edx, ecx
lea bx, qword ptr [rdx]
sub cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
