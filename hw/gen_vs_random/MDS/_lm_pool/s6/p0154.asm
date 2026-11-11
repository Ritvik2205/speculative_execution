.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edi
cmovle di, bx
or si, 94
and si, -121
test dil, -51
and esi, 12
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and ax, -12519
xor bl, -27
test al, -81
xor al, -26
xor al, bl
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rax, -2058103810
and si, -121
not al
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
