.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
xchg ebx, edi
jmp .bb_0.1
.bb_0.1:
xor dil, sil
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
or al, bl
sub al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
