.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, dil
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -18
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and dl, -26 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
btc di, 164
btc rdx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
or rax, -689609688
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
test ebx, -961564216
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
and cx, si
xor dil, -70
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
