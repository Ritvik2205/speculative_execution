.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
test al, 48
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
xor al, sil
adc ax, -614
and rdx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdx]
adc dl, sil
and di, 37
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
