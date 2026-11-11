.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and bl, 68
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and sil, dl
or cx, 39
test bl, -14
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
xor cx, -18
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
xor al, dl
and dl, -73
test si, bx
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
test al, sil
or dl, -31
test al, -81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
