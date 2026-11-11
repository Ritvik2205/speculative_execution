.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 11
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
adc rbx, rdx
xchg dl, al
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
add dl, 41
mov rbx, 9101099553822202722
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], si
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
mov rax, -8696242625349627833
sbb bl, bl
add ebx, 3
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 84
movzx edi, di
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
xor dil, 61
cmovo esi, eax
cmovz eax, eax
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
cmovnp di, di
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
and si, 68
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 89
xchg bx, cx
sbb sil, bl
imul rdi
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edx
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], ax
and rcx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rcx]
test al, dl
add cl, 56 # instrumentation
cmovle rsi, rcx
add bl, -26 # instrumentation
btr ebx, 93
add cl, -37 # instrumentation
adc eax, -39
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rsi]
mul esi
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], edx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 70
btc cx, ax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
test dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
