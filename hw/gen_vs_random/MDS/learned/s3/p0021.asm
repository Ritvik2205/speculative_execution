.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 15
xor al, -89
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
or dx, 125
jmp .bb_0.2
.bb_0.2:
or bl, sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 69
jmp .bb_0.3
.bb_0.3:
bt di, ax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
btc ax, 65
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
