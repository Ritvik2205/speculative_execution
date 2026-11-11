.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
and cl, al
or sil, cl
or sil, -49
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
or dl, -31
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and dl, -73
test al, dl
xor dl, al
or cl, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
