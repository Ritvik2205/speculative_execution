.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
or dil, 12
not cl
or dl, -89
or dl, sil
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
xor sil, -14
bt di, si
test cl, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
