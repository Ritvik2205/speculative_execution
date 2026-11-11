.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
cmp rdi, 93
sub al, -75
setz dl
not rsi
lea rcx, qword ptr [rdi + rsi + 90]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdi
or bx, 0b1000000000000000 # instrumentation
bsf di, bx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
lea rbx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
