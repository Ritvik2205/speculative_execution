.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, -1971658905
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -26
test bl, 106
xor cl, cl
btc di, bx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
or bl, sil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rsi]
inc bl
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
and al, dl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
xor eax, 1170472196
or rax, 1749358813
xor al, -28
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
cmovo rbx, rax
cmovs rax, rsi
adc sil, 80
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
