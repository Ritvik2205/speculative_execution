.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
setz cl
and sil, 111
sbb dil, -106
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
add eax, -55403434
sbb sil, -78
cmp ax, 7046
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -1157135998
sbb dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
