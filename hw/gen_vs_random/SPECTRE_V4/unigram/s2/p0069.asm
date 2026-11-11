.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs esi, edx
cmovnp rcx, rdi
cmp al, 19
and rcx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
add dx, -90
xchg rcx, rbx
xor dl, al
imul bx
add dil, 82
cmovnp rsi, rcx
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
xor sil, bl
sbb dl, dl
add di, -74
cmp sil, 88
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 48
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
xor rsi, -3
and rbx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
cmovnl rsi, rbx
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 98
imul bx, cx
and rsi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
mov si, 22
cmp bl, bl
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe eax, esi
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
cmovo ax, si
sub al, 50
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], 1
imul rdi
adc bx, -89
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rbx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
