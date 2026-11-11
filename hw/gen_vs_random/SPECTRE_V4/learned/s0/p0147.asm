.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
and al, bl
sbb bl, 121
xchg rsi, rax
adc cl, dl
xor cx, ax
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
sub al, 55
sbb al, -43
sub ax, -1393
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
cmp rax, -2096157586
and dil, sil
cmp sil, -100
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
