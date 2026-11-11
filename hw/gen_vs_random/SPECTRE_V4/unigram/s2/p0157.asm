.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ax, al
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 46
and rbx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rbx]
add al, 66 # instrumentation
cmovp ebx, ebx
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
xor cl, dl
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
cmp dl, bl
mov sil, sil
cmovs di, bx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
cmovnp cx, bx
cmovb cx, ax
and rdi, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
mov al, 7
and dx, ax
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
sub ax, 8246
and rsi, 0
xor rax, -117
cmovp rax, rdx
and rsi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rbx]
movsx esi, cl
and rdi, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rdi]
adc si, -74
add di, 18
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 121
or bl, al
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 6
cmp cl, sil
add sil, al
add cx, 58
add cl, 28 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], cx
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
bts si, 97
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
xor edi, 127
movsx bx, cl
xor rdi, -72
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
add dl, 87 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rbx]
cmp dl, cl
and rax, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
