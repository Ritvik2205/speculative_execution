.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], eax
or dl, bl
test cl, sil
test eax, 1838539683
and dx, 3
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
or bx, 79
xor al, 99
jmp .bb_0.1
.bb_0.1:
test sil, 41
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 33
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
