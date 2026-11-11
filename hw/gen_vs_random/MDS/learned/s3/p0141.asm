.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ecx
or al, -24
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
not dl
test eax, 1838539683
or cl, dl
btr eax, edi
xor cl, -13
or bl, 100
bt si, bx
or bl, -125
and sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
