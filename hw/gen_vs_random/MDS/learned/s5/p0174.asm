.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
test esi, 1857129931
and si, -121
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 36
and esi, 33
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
xor ax, -6793
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
test al, dl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
or dl, al
bt ax, di
and ax, -122
and cl, dl
or dil, -71
and eax, 33
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
or bl, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
