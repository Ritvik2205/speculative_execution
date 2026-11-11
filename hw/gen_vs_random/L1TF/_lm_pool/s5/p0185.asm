.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
lea dx, qword ptr [rdx]
and ax, 26813
and dl, dl
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
btr rcx, rax
and rdi, 63
sbb dil, 71
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rdx]
inc al
xor edi, 39
not ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
