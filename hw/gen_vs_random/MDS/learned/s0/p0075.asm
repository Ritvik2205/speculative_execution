.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -22
or cl, dil
xor bl, dil
test edx, -372470678
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
xor al, -19
or dl, 85
or ax, -14271
xor dil, -70
test rax, -2004802425
xor cl, 98
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
or cl, -36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
