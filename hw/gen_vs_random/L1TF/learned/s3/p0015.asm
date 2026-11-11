.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
add rsi, 20
sub dil, -70
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
or bl, -5
jmp .bb_0.2
.bb_0.2:
lea di, qword ptr [rdx + rcx + 42]
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 5
sbb dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
