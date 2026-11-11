.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, eax
and ax, -12519
and cx, -2
test esi, 425331143
xor sil, bl
jmp .bb_0.1
.bb_0.1:
or al, -24
xor cl, dl
xor rcx, 71
test al, bl
or cl, -36
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 44
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
or dx, 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
