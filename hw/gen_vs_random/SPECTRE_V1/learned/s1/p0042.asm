.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sbb sil, dl
cmovno rcx, rax
lea bx, qword ptr [rdx + rdi + 22131]
sbb al, dil
add dl, cl
not cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
