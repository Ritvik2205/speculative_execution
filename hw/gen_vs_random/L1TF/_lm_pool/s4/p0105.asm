.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 7954
mov al, dil
cmovnp ax, bx
test dil, -126
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
test dil, -126
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
lea edi, qword ptr [rsi]
sbb sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
