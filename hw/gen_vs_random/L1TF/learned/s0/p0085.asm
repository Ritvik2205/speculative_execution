.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, -20370
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 78
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
cmovnle rsi, rsi
add dl, sil
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
lea ax, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add cl, 59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdx
and si, bx
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
