.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
xor rbx, 89
xor dil, -5
and al, al
xor al, 34
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
xor rcx, 71
test al, 127
or sil, bl
xor bl, dil
test al, cl
or sil, cl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
test esi, 1857129931
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
or sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
