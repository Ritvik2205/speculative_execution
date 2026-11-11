.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
lea cx, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
lea di, qword ptr [rcx]
test bl, -8
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
lea rdx, qword ptr [rsi + rcx + 34]
inc rax
sbb dil, dl
add dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
