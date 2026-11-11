.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
sbb bx, 42
xor dl, bl
sbb sil, 19
xor sil, 64
or rax, 1808026647
setb dl
and sil, 37
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 67
setb cl
cmovle rbx, rax
sbb edx, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
