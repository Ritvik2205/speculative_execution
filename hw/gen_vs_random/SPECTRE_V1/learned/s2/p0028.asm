.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, esi
sub al, dil
add dil, 72
cmp ecx, 2
lea si, qword ptr [rdi]
cmovnp ax, cx
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea edi, qword ptr [rsi + rdi + 2]
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
