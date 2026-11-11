.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
sub al, -82
cmp dil, bl
lea si, qword ptr [rdi + rcx + 62]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
jl .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, -89
add bl, -95
and rbx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rbx]
and dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
