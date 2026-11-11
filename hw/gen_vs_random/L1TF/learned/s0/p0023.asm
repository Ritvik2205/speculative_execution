.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 80
lea bx, qword ptr [rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 33
test ecx, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
