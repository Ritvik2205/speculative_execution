.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
and rax, -731384280
xor dil, 124
test al, dl
jmp .bb_0.1
.bb_0.1:
test dil, -80
test dl, sil
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
test dl, al
xor al, 9
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
or sil, bl
xor sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
