.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, eax
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
or dil, 16
xor al, cl
xor al, 34
xor sil, 110
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
test al, dl
and sil, sil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and sil, 74
and al, -8
or al, dil
or bl, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
