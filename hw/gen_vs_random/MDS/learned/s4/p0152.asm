.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, edx
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 6
or cl, 119
jmp .bb_0.1
.bb_0.1:
or al, bl
xor dl, al
bt ax, bx
xor sil, -14
and dx, 3
jmp .bb_0.2
.bb_0.2:
test eax, 1287331633
and dil, -39
and bl, 68
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
