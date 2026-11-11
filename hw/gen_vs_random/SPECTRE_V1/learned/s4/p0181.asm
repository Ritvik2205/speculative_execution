.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 84
or eax, 1276549484
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
jl .bb_0.2
jmp .exit_0
.bb_0.2:
lea ax, qword ptr [rdx + rcx + 43552]
test rax, rdx
or bl, al
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
