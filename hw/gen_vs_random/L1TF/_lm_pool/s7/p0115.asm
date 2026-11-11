.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
xor cl, bl
jmp .bb_0.1
.bb_0.1:
imul rbx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dil
sbb cl, dl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 21
test eax, -2032743474
sbb dl, -26
jmp .bb_0.2
.bb_0.2:
test dl, 84
or dx, 55
sub dx, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
