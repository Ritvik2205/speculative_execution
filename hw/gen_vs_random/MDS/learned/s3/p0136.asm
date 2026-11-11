.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rcx], eax
or dl, -97
xor rcx, -2
xor al, 122
or bl, dl
and al, 75
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
xor dil, -3
test esi, 1857129931
btr esi, eax
xor rdi, -9
or al, 37
xor ax, -4010
test cl, 62
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
or esi, -110
test al, -7
xor sil, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
