.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 61
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
adc cl, bl
xchg cl, cl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
test rdi, 28
and cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
