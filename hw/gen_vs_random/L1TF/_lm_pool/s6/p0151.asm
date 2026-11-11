.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 45
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -41
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
jmp .bb_0.1
.bb_0.1:
add bl, 68
sbb edx, 23
btr cx, 87
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
cmovno bx, si
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
test bx, 58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
