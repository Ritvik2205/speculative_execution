.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdx]
inc al
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
or eax, 1495028166
or bl, -5
jmp .bb_0.1
.bb_0.1:
test bl, -92
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 83
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
or ax, -10161
cmp sil, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
