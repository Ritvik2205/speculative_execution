.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
cmovnz edi, esi
xor al, bl
or cl, -36
or bl, sil
xor al, 115
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
or di, 66
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 15
or rax, 302048971
and dil, 125
or sil, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
