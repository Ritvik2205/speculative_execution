.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
xor rdi, -80
xchg bl, cl
sub cl, -49
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
add al, al
jmp .bb_0.1
.bb_0.1:
cmp bl, 123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
