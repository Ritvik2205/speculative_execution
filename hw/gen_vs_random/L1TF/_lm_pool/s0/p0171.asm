.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, cx
xor di, 29
jmp .bb_0.1
.bb_0.1:
test cl, 54
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], di
and al, sil
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 125
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
