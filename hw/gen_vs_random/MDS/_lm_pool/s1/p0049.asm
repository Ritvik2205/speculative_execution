.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 93
xor al, -4
and cl, dl
or sil, -49
and bl, cl
test cl, sil
xor dl, -43
or al, 24
or ax, 30524
and sil, sil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 65
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
xor dl, 8
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
test eax, 1838539683
xor dl, 34
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
