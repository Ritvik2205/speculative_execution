.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rsi], bx
movsx si, bl
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and cl, -109 # instrumentation
cmovns rdi, rdi
lea edx, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 87
mul di
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
