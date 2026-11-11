.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 27170
xor ax, -12492
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
btr cx, si
or cl, cl
or sil, dil
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rax, -1931765367
test rdx, 20
xor al, bl
xor al, 9
xor bl, -27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
