.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, eax
or cl, -98
seto sil
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
xor ax, 913
cmovnbe rdi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
