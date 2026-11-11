.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
add sil, sil
lea rbx, qword ptr [rdx + rax]
xor sil, dl
jmp .bb_0.1
.bb_0.1:
add al, 74
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
add al, al
inc eax
and rax, 1994547909
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
