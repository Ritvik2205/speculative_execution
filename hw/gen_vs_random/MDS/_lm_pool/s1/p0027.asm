.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -15
test edi, -1252846009
xor dl, -43
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], -86
or cl, dl
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
test bl, -9
test sil, 41
test al, 22
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
xor al, 8
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and sil, -56
and dl, sil
xor di, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
