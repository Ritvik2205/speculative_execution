.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, 46
test dil, -51
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
or rdx, -48
test si, di
not al
test al, -81
and eax, -85386306
xor sil, dl
or al, bl
and sil, 89
xor dl, dil
or dil, -76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
