.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 37
and rbx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rbx]
cmp bl, al
sbb dil, dil
dec bl
and al, dl
sbb bl, dl
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdx
sbb sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
