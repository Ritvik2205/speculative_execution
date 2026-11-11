.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
and sil, 93
test cl, 41
sbb sil, -79
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 81
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
add dl, 22
btc cx, si
jmp .bb_0.2
.bb_0.2:
cbw
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
