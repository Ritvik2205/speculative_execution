.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edx, esi
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
xor cl, dil
add cl, sil
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rdi + rsi + 42]
sub dl, -34
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
jmp .bb_0.4
.bb_0.4:
and bl, bl
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
