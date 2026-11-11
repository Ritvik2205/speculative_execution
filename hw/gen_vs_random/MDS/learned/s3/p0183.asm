.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 339
or al, -22
test dl, 9
and rax, -978188247
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 5
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
not al
xor dl, 8
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
