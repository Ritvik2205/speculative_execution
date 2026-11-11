.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
and di, 91
or bl, dil
test cl, -123
xor rbx, 89
xor dl, -43
xor dl, al
xor dl, -43
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
xor dl, -59
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
