.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, -118
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 28
cmp rax, -1365488374
movsx rbx, cx
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
test bl, dil
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
bt rbx, 183
mul bl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rdi], cx
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 5
add dl, -125 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
