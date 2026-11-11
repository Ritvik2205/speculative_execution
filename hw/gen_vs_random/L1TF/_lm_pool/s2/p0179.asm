.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 86
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
not eax
and dx, 87
xchg bl, sil
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx], 10
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
