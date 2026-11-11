.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
or bl, cl
xor dil, -42
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx], 67
and dl, 10
xor al, 45
jmp .bb_0.1
.bb_0.1:
or eax, ebx
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and edi, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
