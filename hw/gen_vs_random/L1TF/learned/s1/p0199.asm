.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
not bl
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb cl, dl
cmp bl, 123
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 44
jmp .bb_0.3
.bb_0.3:
cmovnbe ebx, esi
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
