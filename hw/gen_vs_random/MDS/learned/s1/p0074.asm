.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 48
and rcx, 107
xor dil, bl
jmp .bb_0.1
.bb_0.1:
or dx, 125
or al, -61
or ax, 127
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
or al, -58
and cx, -8
and dl, -73
test cl, dil
xor sil, dl
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], dx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
bts ax, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
