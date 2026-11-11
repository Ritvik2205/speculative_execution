.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, di
or sil, cl
or al, dil
btr ax, dx
xor cl, dil
bt esi, ecx
test ebx, -2015966884
or al, sil
or dl, al
bt di, dx
btr rax, 56
bt bx, ax
test sil, al
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
or al, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
