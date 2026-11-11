.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rsi, rsi
test rsi, 98
or dl, dl
or bl, -52
and rsi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdi], eax
bts rsi, 206
and esi, 18
or rax, -141551502
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
test dil, dil
and rsi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 1
jmp .bb_0.1
.bb_0.1:
cmovnz si, ax
and bl, -99 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdi]
test cl, -123
cmovns rbx, rdi
or cl, bl
test al, dl
and di, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
