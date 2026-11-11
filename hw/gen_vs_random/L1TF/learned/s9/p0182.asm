.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
sub cl, al
lea rax, qword ptr [rcx]
xor sil, 64
or si, 11
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 57
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
