.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, dx
cmp eax, 951020724
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
bt bx, cx
lea rdi, qword ptr [rdx + rcx]
and rcx, 23
or rcx, 94
xchg bl, dl
jmp .bb_0.1
.bb_0.1:
test al, -70
xor rax, -2072052278
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
