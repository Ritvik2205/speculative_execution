.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
test ax, di
cmovnz di, bx
xor bl, dil
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test dil, -126
and rcx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rcx]
or rax, -443578116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
