.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, al
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
sub dl, cl
test bl, -8
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
lea eax, qword ptr [rcx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
lea eax, qword ptr [rbx + rax + 30]
sub dl, al
adc cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
