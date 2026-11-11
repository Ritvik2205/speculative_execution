.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -104
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
sub dl, 41
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 55
cmp rsi, 41
or dl, cl
xor al, bl
sub sil, -99
sbb sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
