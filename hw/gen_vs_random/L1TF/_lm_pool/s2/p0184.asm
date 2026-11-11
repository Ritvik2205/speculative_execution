.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 84
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
test al, -32
add dl, 22
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 73
sbb bl, al
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 92
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
xor di, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
