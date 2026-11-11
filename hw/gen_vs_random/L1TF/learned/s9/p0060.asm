.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -104 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and dl, 32
setp al
jmp .bb_0.1
.bb_0.1:
test dil, -126
adc ax, 87
jmp .bb_0.2
.bb_0.2:
test dil, -126
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
test al, -56
lea rbx, qword ptr [rcx + rsi + 93]
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
