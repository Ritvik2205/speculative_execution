.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -1
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
lea si, qword ptr [rax + rdx + 73]
dec sil
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
xor cl, dl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
and sil, dil
not dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
