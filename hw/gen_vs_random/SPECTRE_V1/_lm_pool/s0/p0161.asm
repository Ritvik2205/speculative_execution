.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 39
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
jl .bb_0.2
jmp .exit_0
.bb_0.2:
adc bl, 102
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
