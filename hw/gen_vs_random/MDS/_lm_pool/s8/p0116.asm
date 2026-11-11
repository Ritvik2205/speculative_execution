.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, sil
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], cx
test ax, -20900
xor ax, -16696
xor cl, 55
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
xor cl, 15
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 17
or al, -22
jmp .bb_0.1
.bb_0.1:
test sil, al
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
xor bx, 66
xor ax, -4010
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
