.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, 106
mov eax, 1596316323
and rdi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
not cl
bswap eax
adc dil, -15
adc rbx, 60
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], sil
test dl, dl
xchg dl, al
cmovl rbx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rcx], rsi
not di
adc dil, cl
cmp dil, 53
add bl, -99 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], ax
add al, -67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rsi]
btc eax, ecx
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], eax
and rsi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rax], 25
and rax, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rax]
neg si
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 14
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], esi
sub bl, 66
cmp dl, -82
cmovnb cx, bx
bt ax, bx
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
add rcx, 32
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
movsx bx, al
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
cmp dl, al
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dil
xchg edx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
