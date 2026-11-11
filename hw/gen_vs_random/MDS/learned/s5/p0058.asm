.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
xor sil, -15
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
and cl, bl
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
or bl, dil
and sil, sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
or cl, bl
and cl, bl
and sil, bl
and rax, 498847670
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
jmp .bb_0.2
.bb_0.2:
or rdx, -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
