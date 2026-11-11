.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
or sil, -44
xor eax, -2123070438
xor sil, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
add bl, 68
jmp .bb_0.2
.bb_0.2:
cmovle rax, rdi
sbb dl, bl
lea rdi, qword ptr [rdx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
