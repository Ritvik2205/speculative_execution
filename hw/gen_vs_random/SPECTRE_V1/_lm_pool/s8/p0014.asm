.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dl
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
test sil, 47
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmp ebx, -33
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
xor di, 69
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
