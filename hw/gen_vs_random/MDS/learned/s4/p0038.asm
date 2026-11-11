.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 222
or dil, -78
or esi, -110
test al, 91
and cx, -8
or al, cl
xor cl, bl
and ax, -12519
or rdx, -48
jmp .bb_0.1
.bb_0.1:
and edx, -44
or rbx, -72
or rax, -141551502
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
test dl, sil
and dil, -62
xor cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
