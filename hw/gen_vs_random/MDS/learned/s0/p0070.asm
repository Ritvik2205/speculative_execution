.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 31
bts rcx, rsi
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
btc di, 164
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and cl, dil
xor sil, -15
test rcx, -613256812
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
test dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
