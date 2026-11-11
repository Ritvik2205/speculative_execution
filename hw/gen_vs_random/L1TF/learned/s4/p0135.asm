.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 12
adc dil, 120
jmp .bb_0.1
.bb_0.1:
xor dl, 9
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
sub ax, dx
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 96
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
cmp bl, 123
xor rax, 20
cmp dil, 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
