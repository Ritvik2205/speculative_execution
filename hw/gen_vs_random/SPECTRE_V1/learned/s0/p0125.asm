.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -57
add sil, -68
adc cx, -30
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnle rdx, rbx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
test bl, -8
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx], 7
or eax, 1276549484
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
or rbx, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
