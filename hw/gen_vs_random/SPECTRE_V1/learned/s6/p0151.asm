.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
sub dl, -12
sbb sil, cl
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dil, -78
sbb sil, al
lea rdi, qword ptr [rbx + rcx + 13]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], 73
or rsi, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
