.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, ax
and sil, dil
or si, 94
xor al, 99
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
or rcx, -17
test dl, cl
and dl, -73
test al, sil
xor al, -26
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
