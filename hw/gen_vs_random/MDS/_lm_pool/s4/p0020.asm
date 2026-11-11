.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, cl
bts rdi, rdx
bt dx, ax
xor sil, al
or dil, bl
and rax, -636362975
and rax, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test sil, -96
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
or bl, dil
xor ax, -5889
not cl
xor rdi, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
