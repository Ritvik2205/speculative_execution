.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dil
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
sub sil, -18
cmp rax, 900122030
lea esi, qword ptr [rax]
setnle dil
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], sil
sbb dl, 127
and dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
