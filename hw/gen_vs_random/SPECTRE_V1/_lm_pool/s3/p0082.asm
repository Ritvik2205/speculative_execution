.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
sbb al, sil
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
sub dl, cl
test al, 40
test al, -99
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
sub cl, bl
lea di, qword ptr [rbx]
and cl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
