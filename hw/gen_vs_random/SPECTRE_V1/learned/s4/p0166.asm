.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 20
inc rax
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
sub di, 73
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xor dil, al
test cl, -24
lea rdi, qword ptr [rbx + rax]
mov dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
