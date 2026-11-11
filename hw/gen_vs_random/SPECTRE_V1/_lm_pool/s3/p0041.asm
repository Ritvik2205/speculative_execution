.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dx
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
sbb al, 118
cmp rsi, 53
add dl, sil
jb .bb_0.1
jmp .exit_0
.bb_0.1:
setb dil
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
