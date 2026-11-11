.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
test sil, -101
cmovp ax, bx
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
mul rdi
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 83
setnz dil
add cl, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 6791
mov al, cl
movzx dx, bl
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rdi], bx
add dil, -123 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
