.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 40 # instrumentation
btc rsi, rsi
and rdi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
add cl, dl
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx], 44
jmp .bb_0.1
.bb_0.1:
test sil, 29
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
