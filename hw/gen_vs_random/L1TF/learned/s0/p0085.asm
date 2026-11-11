.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 104 # instrumentation
mov ecx, 87
or al, -57
not edx
xor bl, -5
sub cl, 86
lea ax, qword ptr [rdi]
xor cl, 89
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
lea di, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
test dil, -126
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
