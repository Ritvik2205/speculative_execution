.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 99
or edi, 68
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], dx
sub al, dl
sbb bl, 79
sbb dl, sil
sbb dil, cl
xchg rsi, rax
lea si, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], 68
and rax, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
