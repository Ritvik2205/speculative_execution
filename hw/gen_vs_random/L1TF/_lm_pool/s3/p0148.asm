.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 21
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
xchg rbx, rdx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
or dil, bl
test cl, 89
add dx, 74
test eax, 645518295
add sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
