.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rsi, rax
cmovnp rcx, rbx
add al, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
cmovnp cx, cx
add cl, cl
add bl, -72
add al, -10 # instrumentation
cmovnbe eax, edx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax], 45
movsx edi, cx
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], ax
mov rax, -8696242625349627833
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], bx
mul edx
add rsi, rax
sbb si, 21
cmp cl, dl
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 90
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
bts rcx, rdi
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
cmovnp rax, rdx
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 33
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
imul cl
or cl, 7
mov rdx, 1
cmovnle di, di
add cl, -117 # instrumentation
cmovs rdi, rax
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 39
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 25
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rbx], eax
xchg rsi, rbx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
add rdi, rbx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
not cx
sub bl, 17
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
cmp cl, dl
add dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
