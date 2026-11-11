.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, -19
lea ax, qword ptr [rsi]
test al, 48
lea di, qword ptr [rdi]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
add al, -13
add bl, cl
test rcx, -1420345926
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
