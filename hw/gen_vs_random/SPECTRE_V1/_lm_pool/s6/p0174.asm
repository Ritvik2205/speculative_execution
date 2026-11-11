.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
test al, 59
setbe sil
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, cl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
sbb eax, 1392087754
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
