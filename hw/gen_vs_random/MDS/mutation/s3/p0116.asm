.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and dl, 97 # instrumentation
cmovnp si, cx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
cmovb si, si
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rdi], bx
and al, 54 # instrumentation
cmovnp si, si
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdi
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
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
lock or word ptr [r14 + rsi], 24
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
test ebx, -961564216
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
and cx, si
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
or rax, -1561934807
xor dil, -70
btc rdx, rdi
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
