.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], ecx
cmp edx, edx
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 2
imul edx, eax
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 23
and rsi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rsi]
adc al, 41
xor rsi, rdi
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
cmovno eax, edx
sbb di, -105
add bl, 102 # instrumentation
cmovnp edi, edx
test rax, rcx
add cl, -9
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rcx], ax
imul dl
xchg cx, cx
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
test ax, 19171
sub dil, al
xor rax, rcx
add cl, -62
sbb bl, -79
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 74
and si, -74
xchg cx, bx
add al, 100 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 1
and rcx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rbx]
adc dil, bl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 96
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
sub rbx, 101
add dil, dl
adc sil, cl
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], sil
mov rbx, rax
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
