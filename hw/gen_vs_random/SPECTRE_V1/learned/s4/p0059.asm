.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
cmp rdx, -19
sub al, dl
sbb ebx, 15
sub bl, -19
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, al
cmovle rsi, rbx
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
