.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 9
xor dl, -19
and di, 99
jmp .bb_0.1
.bb_0.1:
and bl, 68
and edi, 23
or rcx, -17
or bl, 43
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 75
or rbx, -72
and eax, 561041355
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
xor cl, sil
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
