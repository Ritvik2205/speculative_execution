.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], esi
test al, 66
and ax, 31082
xor rax, -345061362
test eax, 343548072
xor al, 9
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
or ax, -23697
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
test bl, -114
test bl, -14
xor sil, -46
xor sil, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
