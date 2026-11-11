.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], ax
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rsi
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
btc rsi, rbx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
cmovnb di, di
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 85
xor ebx, 38
xor rax, 16
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 21
not esi
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 56
and ecx, 73
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
bt rdi, rax
and cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
