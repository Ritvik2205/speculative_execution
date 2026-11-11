.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
xor al, dil
xchg dl, cl
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jle .bb_0.2
jmp .exit_0
.bb_0.2:
sub cx, 4
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
