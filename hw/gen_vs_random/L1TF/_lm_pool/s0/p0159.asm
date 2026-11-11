.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edi, bx
sub sil, al
lea rax, qword ptr [rcx + rcx + 87]
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
