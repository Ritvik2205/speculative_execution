.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 21910
sbb dil, -93
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -72
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
add cl, dl
add dil, -75
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rcx]
sbb cl, 105
sbb dl, sil
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
