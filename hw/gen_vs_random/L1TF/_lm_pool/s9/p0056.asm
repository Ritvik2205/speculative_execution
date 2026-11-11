.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dl
or al, -57
and ax, 26813
sbb al, cl
cwde
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rax]
jmp .bb_0.2
.bb_0.2:
add cl, 44 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
mov dil, 4
and al, -68
test dil, -126
or al, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
