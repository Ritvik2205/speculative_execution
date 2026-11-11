.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul sil
sbb dl, -99
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 68
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 66
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rdx], dx
sub rax, rdx
add cl, sil
test sil, 28
and rdi, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdi]
add al, 118
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 74
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 63
cmovo rax, rdx
bt esi, ecx
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 68
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 24
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and si, 68
imul ax, cx
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
cmp al, dil
sbb edi, 56
add bl, -18 # instrumentation
mov rbx, rdi
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 71
or ax, 0b1000000000000000 # instrumentation
bsr dx, ax
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
cmovo ax, di
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 95
and dil, al
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
xor dl, dl
movzx rdi, cx
cmovp ecx, eax
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
add dil, 97 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 35
and rdx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 8
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], eax
cmovnbe rdx, rdx
add al, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rsi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
