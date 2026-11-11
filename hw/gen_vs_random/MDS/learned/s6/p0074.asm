.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
xor bl, -102
and esi, 70
setb al
and edx, -44
and dil, dil
bt si, cx
or al, dl
test bl, 65
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
xor sil, -126
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
bt rax, 70
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
and rcx, 107
xor al, -19
sbb al, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
