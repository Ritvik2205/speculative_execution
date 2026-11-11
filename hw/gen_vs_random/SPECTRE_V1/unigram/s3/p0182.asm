.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rdx, rdx
sub edx, -63
cmovnb rcx, rsi
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
setns bl
cmp bl, -114
cmp rdi, 78
sbb di, -122
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and ax, -22629
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 44
mov al, dil
adc di, dx
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
