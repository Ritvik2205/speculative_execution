.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, bx
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], edi
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
sub cl, 116
not cx
cmovl rdi, rcx
movzx rsi, bl
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
cmovnz ecx, ebx
sub cl, -74
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rax]
cmovle edx, ebx
xor cl, -54
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
add rdi, rcx
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], al
add bl, 65 # instrumentation
cmovnp bx, di
and dil, bl
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
xor rsi, rdx
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
add cl, -82 # instrumentation
sbb si, cx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 76
and rdi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
adc edx, 34
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and di, 96
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 26
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 96
xor dil, 35
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 4
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
