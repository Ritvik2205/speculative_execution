.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -90
add al, -32
xor dil, dl
or bl, 111
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
cmp al, dl
lea ecx, qword ptr [rsi]
or sil, cl
xor al, -82
cmp ecx, 9
test ax, -18054
and ax, -16777
test bl, 110
and dl, 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
