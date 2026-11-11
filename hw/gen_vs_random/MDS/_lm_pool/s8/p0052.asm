.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -73
and cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], dx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and cl, -111
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 9
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
xor cl, sil
xor rcx, -2
xor dl, al
test cx, 401
test dil, -80
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
