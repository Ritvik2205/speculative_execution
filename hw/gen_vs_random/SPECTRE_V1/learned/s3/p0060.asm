.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
add rax, 6
test al, 34
sbb eax, 1830317432
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
