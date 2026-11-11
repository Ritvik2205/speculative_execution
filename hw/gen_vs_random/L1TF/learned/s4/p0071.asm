.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
inc dl
or cl, dil
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 14
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
test sil, dil
cmovnbe rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
