.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
or sil, -49
test rdx, 91
jmp .bb_0.1
.bb_0.1:
test al, 127
xor cl, dl
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
or bl, dl
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
or dil, 12
xor sil, 94
jmp .bb_0.2
.bb_0.2:
or dl, al
and eax, 943733866
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
test dil, -51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
