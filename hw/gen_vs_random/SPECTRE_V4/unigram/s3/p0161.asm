.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
xchg rcx, rsi
sbb ebx, -54
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 57
cmovnb eax, esi
or dil, sil
adc sil, -2
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 75
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rax
or di, di
adc dil, 112
movzx dx, al
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
mov bl, sil
mov dil, al
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
neg rax
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], edi
dec dil
adc cl, -4
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
add dl, 71 # instrumentation
cmovnle rbx, rdx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
btr rbx, rcx
cmovnl bx, bx
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 54
sub bl, -98
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
cmovle di, di
sub cl, -73
and rdx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
xchg ecx, esi
sub ax, dx
btc ebx, edx
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx]
cmovbe dx, si
xor cl, -101
adc al, 41
cmp dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
