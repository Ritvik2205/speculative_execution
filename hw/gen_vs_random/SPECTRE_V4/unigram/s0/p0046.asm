.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, bl
not si
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
cmovnz edx, esi
imul edx, ebx, 1
and al, 49
movzx edx, si
cmovnz edx, ecx
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 57
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rdx]
btc rax, rsi
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rdi
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
and dl, cl
cmovs rcx, rsi
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 80
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1412107342
add cl, 18 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], edx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], -17
add cl, al
sbb dx, 2
or rsi, 73
sbb edx, ecx
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], dil
cmovbe dx, si
mul sil
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -115
or di, di
mov sil, cl
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 11
cmovnp rdi, rdx
cmovno rdx, rdi
test rbx, 1219566903
add sil, 7 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdx]
add dl, -82
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
adc cx, dx
add dl, -120 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rdx]
movzx ebx, dl
or rbx, -108
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
