.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -81
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
or rax, 52
and sil, 74
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
test sil, al
and cl, dil
and bl, bl
xor sil, 94
test al, 66
xor cx, -18
test al, cl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 30
xor al, 9
or al, 24
and cl, -19
xor cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
