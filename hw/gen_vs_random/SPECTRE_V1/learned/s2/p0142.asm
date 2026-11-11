.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
cmp ebx, -33
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
adc sil, bl
and rsi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rsi]
lea rcx, qword ptr [rax + rdx + 88]
cmovb cx, bx
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
and al, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
