.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
and dil, 8
adc esi, 53
or eax, 1001462340
and dil, 8
or al, 1
cmp dil, al
and rdx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdx]
and ax, 26513
and bl, -30
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
