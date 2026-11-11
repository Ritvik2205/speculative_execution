.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
sbb bl, dl
sbb dl, cl
and rbx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
sbb cl, dl
cmovb bx, di
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
lea rdi, qword ptr [rsi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
