.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
or al, -5
test sil, 29
xor dil, bl
add cl, sil
test al, -82
sbb bl, dil
adc dil, sil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
lea rax, qword ptr [rsi + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
