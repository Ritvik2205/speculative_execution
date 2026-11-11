.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe ax, di
and rdi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], dx
adc ebx, -100
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
mul dx
and rbx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rsi]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
mov sil, bl
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
mov sil, 87
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
xor ax, 13329
add dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
cmovle ebx, edi
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], sil
cmovb cx, di
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 25
dec rsi
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rdx
or eax, -1779536330
add al, 42 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
btr dx, 209
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
adc edx, -86
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], -15
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
cmp dl, sil
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
movsx cx, bl
and rax, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
test dil, 64
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
neg dl
xor ax, ax
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -73
and ecx, 71
add eax, 544045319
add rbx, 30
cmovbe dx, si
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
