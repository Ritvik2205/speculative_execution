.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 34
test bl, -8
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
add ebx, -47
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
cmp ecx, 86
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
cmp dil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
