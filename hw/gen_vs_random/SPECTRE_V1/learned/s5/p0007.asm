.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 24
and dil, -93
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
lea dx, qword ptr [rdi + rcx]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
adc dl, -49
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
and dx, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
