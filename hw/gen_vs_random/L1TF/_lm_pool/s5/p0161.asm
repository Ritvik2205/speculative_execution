.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -104 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
add rcx, 3
xor rbx, 46
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
jmp .bb_0.1
.bb_0.1:
and eax, -409673666
sbb ax, -5921
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], sil
xor sil, cl
neg rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
