.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -24
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
movsx rbx, si
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rbx
sbb dl, 127
test al, 84
xor di, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
