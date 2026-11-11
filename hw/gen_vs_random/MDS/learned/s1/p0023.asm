.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -78
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
and ax, -12519
or rcx, -17
jmp .bb_0.1
.bb_0.1:
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, esi
jmp .bb_0.2
.bb_0.2:
and al, 49
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
