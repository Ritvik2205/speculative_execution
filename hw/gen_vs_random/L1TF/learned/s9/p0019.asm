.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
cmovnle rcx, rax
or sil, al
xor sil, dl
jmp .bb_0.1
.bb_0.1:
imul rbx
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx], 25
jmp .bb_0.2
.bb_0.2:
add bl, 89 # instrumentation
sbb bl, al
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
lea ax, qword ptr [rdx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
