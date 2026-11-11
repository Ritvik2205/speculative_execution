.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 1
or cl, 6
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
xor ax, 31969
xor sil, 94
jmp .bb_0.1
.bb_0.1:
and bl, 68
or bl, dl
xor dl, dil
bt si, dx
xor cl, dl
or bl, dl
or cl, bl
not dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
