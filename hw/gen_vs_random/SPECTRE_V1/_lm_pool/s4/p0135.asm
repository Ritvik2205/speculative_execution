.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
test al, 84
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
test dil, -116
sbb dil, dl
test al, 59
xor rdi, 16
lea rax, qword ptr [rcx + rdx + 69]
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
test eax, 133988823
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
