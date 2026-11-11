.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
test dx, 16353
btc rdx, rdx
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 12
or cx, 39
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
xor rbx, 89
and rcx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
bt rdx, rsi
and cx, ax
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], esi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
btr ax, dx
test rsi, 38
and dl, 53 # instrumentation
cmovnl rdx, rdx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 80
xor si, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
