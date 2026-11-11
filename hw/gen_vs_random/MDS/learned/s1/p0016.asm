.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, al
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
bts esi, 61
test dil, cl
or al, -61
xor sil, -14
not al
or dl, al
xor rcx, -2
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
test al, dl
or bl, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
