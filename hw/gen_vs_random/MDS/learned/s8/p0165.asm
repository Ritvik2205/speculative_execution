.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
or al, 30
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
not sil
and bl, dil
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
test cl, -86
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and sil, -56
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
or al, -24
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
xor dl, 34
cmovnp rcx, rax
or al, -24
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and bl, 68
test al, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
