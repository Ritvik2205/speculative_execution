.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], di
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rsi
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
add bl, 70
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rax
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
lea eax, qword ptr [rbx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdi]
sbb al, dl
sub rdx, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
