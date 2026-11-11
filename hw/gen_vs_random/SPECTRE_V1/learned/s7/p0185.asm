.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -62
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 65
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
test sil, 13
test cl, -24
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 89
xor dl, 71
cmp cl, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
