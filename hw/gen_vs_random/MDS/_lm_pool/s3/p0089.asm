.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
test esi, 1857129931
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
and rax, -2058103810
test ecx, -1843375753
and cl, dl
xor cl, dl
or sil, -78
xor ax, -5889
jmp .bb_0.1
.bb_0.1:
xor al, 9
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
or cl, 119
and ax, -12519
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
