.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
cmovnb rbx, rcx
add al, 56
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
or rax, 1808026647
lea bx, qword ptr [rax + rdx + 24839]
lea rdx, qword ptr [rbx + rcx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea ax, qword ptr [rbx + rdx + 10]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
cmp bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
