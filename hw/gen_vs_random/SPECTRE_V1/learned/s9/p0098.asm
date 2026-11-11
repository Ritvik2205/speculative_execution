.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dl
mul rcx
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea eax, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
sbb dl, bl
and dl, -111
sbb al, -107
jle .bb_0.2
jmp .exit_0
.bb_0.2:
adc dl, 107
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
test cl, -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
