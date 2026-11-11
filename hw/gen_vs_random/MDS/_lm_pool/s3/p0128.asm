.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and edi, 23
and sil, dl
xor al, cl
or bl, -54
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
or al, -75
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
or sil, -78
xor dl, -43
and bl, 68
and dx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
