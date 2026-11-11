.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -863161215
cmp rax, -1247892360
cmp dil, -29
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
cmp al, cl
and bl, 76
cmp dl, cl
cmp cl, dil
mov bl, dil
or bl, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
