.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, di
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
btr bx, dx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
xor al, bl
xor sil, 94
xor al, sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
test eax, 343548072
or dil, sil
test dl, -95
btr rax, 29
bt ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
