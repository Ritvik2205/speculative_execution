.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edi, esi
and ax, 7954
and al, dl
xor al, 89
jmp .bb_0.1
.bb_0.1:
lea dx, qword ptr [rcx + rbx + 86]
mov dil, dl
xor dil, bl
sbb bl, dl
xor rdi, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
