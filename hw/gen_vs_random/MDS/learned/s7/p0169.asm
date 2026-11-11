.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 88
and ax, 13090
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
btr si, ax
or al, dil
or dil, -71
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and cl, dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
test cl, 91
and ax, -16061
or sil, cl
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
