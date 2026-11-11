.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
xor dl, -43
test al, 91
btr esi, ebx
test rcx, -613256812
or dil, -76
or dil, 12
xor sil, cl
and rdx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdx]
and ax, 5001
xor dl, 34
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
or dl, -21
or dl, dl
test cl, sil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
test si, 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
