.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
and sil, bl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
add dl, al
and rdx, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rdx]
btc cx, 48
movsx eax, al
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 4
adc rsi, rcx
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rbx
sbb dx, dx
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], ax
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
btc ax, 4
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
adc dil, dil
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
btc rcx, rbx
add rcx, 32
and al, -118
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
test rdi, 1222000858
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
mov bl, cl
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rcx
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 15
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 9
xchg dx, cx
cmovo si, dx
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
cmovz bx, si
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 66
and rbx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 104
or bl, -80
bswap rsi
xor di, 78
xor edx, edx
bt esi, 15
or dl, dl
add dil, -97 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], eax
or sil, al
mov cl, cl
adc eax, -1127383570
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
