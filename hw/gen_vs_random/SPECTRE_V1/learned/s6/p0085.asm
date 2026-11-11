.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
sbb sil, dil
test al, sil
test cl, -33
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb bl, dil
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
sbb bl, dl
jmp .bb_0.2
.bb_0.2:
inc eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
