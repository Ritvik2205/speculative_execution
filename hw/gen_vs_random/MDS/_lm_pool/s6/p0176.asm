.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 68
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 62
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
or bl, dl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
btr ax, si
and cl, al
or sil, -78
and di, 91
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
and cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
