.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
xor al, -19
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
cmovns rcx, rdi
add ebx, -116
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], cl
lea ax, qword ptr [rbx + rdx + 32397]
add edx, 43
sbb edx, 105
or rdi, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
