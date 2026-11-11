.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
and cl, 86
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
xor rbx, rdx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
test dl, 113
sub dil, bl
lea ax, qword ptr [rdi]
cmp bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
