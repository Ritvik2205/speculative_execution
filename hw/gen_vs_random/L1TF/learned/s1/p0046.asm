.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 15
sbb cl, al
sub dx, 34
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
xor dl, bl
btc eax, 220
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test bl, 12
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
