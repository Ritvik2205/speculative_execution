.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx esi, bl
movzx edi, bl
sbb rcx, 7
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 71
add edx, esi
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], al
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rdi
or edx, esi
sub cl, 116
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
sbb si, di
sbb sil, al
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
bt ebx, eax
bt esi, 227
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], bx
and di, 52
btc bx, 43
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
xor dx, di
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
cmovl rdx, rsi
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
sbb al, al
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi]
cmovnl rax, rbx
cmovnle edx, esi
cmovnb esi, eax
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
dec rbx
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sub rdi, rdx
cmovnp esi, eax
and rdi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdi]
test ebx, -595096626
adc edx, 76
or dl, 56
cmp dil, dl
or sil, 7
mul ax
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
adc rdx, 15
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi], 49
cmovnz edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
