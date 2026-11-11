.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -15
and eax, 461212071
xor al, -89
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
test bl, cl
and cl, cl
xor al, 8
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
or bl, dl
and cl, cl
test bl, dil
or sil, bl
or sil, cl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
