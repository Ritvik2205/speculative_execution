.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
xchg cl, dl
not dil
test dl, -37
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 51
jmp .bb_0.1
.bb_0.1:
test bl, 45
btc ax, bx
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 112
and ax, 37
test esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
