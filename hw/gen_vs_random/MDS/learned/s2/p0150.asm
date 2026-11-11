.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, 189
test dil, -51
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
and al, -114
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
xor rbx, 89
and bl, dil
btr ebx, edi
and sil, -69
or al, bl
btr ax, 193
bt bx, ax
test al, -81
xor al, 55
btr ax, dx
or ebx, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
