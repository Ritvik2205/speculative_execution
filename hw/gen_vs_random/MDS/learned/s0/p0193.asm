.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, sil
xor al, 122
or dl, bl
and dil, sil
and ax, -122
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
jmp .bb_0.1
.bb_0.1:
and ax, 27170
and ax, -10351
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 83
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
or al, -24
bt edx, eax
xor ax, -12492
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
