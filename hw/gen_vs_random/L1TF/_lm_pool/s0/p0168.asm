.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, bx
inc rdx
and rax, -109
xor sil, dil
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
cmp dx, 15
sub al, dil
jmp .bb_0.1
.bb_0.1:
test al, -82
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dl
lea rax, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
