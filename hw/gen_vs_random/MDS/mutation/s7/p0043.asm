.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rsi, rdi
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
xor dl, 8
xor al, bl
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rdi
and cl, 91 # instrumentation
cmovle rbx, rbx
cmovbe edi, edi
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
jmp .bb_0.1
.bb_0.1:
and dl, -26 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and dl, dil
btc di, 233
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 82
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
test ebx, -2015966884
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
and cx, si
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
or rax, -689609688
xor dil, -5
btc rdx, rdi
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
