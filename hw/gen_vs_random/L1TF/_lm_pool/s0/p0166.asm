.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -82
xor rax, -2072052278
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 28
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl
or al, -48
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovbe ebx, edi
or cl, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
