.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and eax, 454700988
xor dl, sil
and sil, -9
xor dl, 34
and ax, -12519
test ebx, -2015966884
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
xor al, -4
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
or dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
