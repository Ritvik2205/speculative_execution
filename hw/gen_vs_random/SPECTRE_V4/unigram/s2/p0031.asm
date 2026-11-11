.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -72
neg ax
test sil, al
mov ax, 1
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
add eax, -1796699558
add bl, -21 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
not sil
movzx ax, al
mov dl, dl
adc eax, -79
cmovz ecx, edi
xchg rbx, rsi
add dl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
adc dl, 33
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
sub cl, 116
mov rax, -8696242625349627833
cmovnl rax, rax
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and bl, sil
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 33
xor esi, 44
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdx
xor sil, bl
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
mul rbx
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
adc dl, dl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], ax
xor dl, sil
add bl, -115 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 43
sub dil, dl
xor al, 56
cmovl rax, rdi
xor al, 59
xor cl, cl
xor dil, al
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
bts ecx, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
