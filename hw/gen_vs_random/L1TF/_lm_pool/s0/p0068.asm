.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
xor sil, 64
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx], 48
xchg bl, al
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
