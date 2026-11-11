.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, -18
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
sbb bl, al
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi], 46
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
sub bl, dil
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
