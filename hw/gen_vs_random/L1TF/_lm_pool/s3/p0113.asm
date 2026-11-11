.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, 86
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
lea rax, qword ptr [rdi + rsi + 19]
add sil, cl
cmovb rax, rdx
sub dl, bl
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and cl, dl
lea rsi, qword ptr [rdi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
