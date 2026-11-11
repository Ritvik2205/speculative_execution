.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
adc al, cl
or cx, cx
test sil, dl
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
add al, 3
inc eax
test bl, -8
sbb cl, 105
xchg al, dl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 86
sbb dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
