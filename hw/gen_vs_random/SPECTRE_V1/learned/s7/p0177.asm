.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -68
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, -175411684
sub al, dl
add sil, -68
xchg cl, sil
and sil, 111
sbb eax, 1332762061
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rsi
xor cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
