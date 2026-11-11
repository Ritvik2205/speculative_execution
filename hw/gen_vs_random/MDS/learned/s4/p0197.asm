.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -4410
or bl, al
xor al, -4
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
and rax, 627810357
and al, 84
or bl, -54
jmp .bb_0.1
.bb_0.1:
and dil, -39
test cl, 91
and sil, sil
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
xor bl, -27
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -553694152
xor ax, -6793
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
