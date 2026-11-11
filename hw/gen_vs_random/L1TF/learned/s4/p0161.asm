.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
adc rbx, 75
lea rcx, qword ptr [rbx + rsi + 4951]
and rdx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
not si
sub dl, cl
lea bx, qword ptr [rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 70
and si, bx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 61
sub dl, al
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
