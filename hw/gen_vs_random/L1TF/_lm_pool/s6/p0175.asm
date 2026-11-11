.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
test cl, bl
jmp .bb_0.1
.bb_0.1:
xor al, dl
sub bl, dl
test al, -56
lea rsi, qword ptr [rdx + rdi + 56]
lea dx, qword ptr [rbx]
sbb al, bl
cmp dil, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
