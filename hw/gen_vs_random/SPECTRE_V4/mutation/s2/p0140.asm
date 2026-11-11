.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 15671
test dl, bl
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 110
adc sil, -2
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 76
bts ecx, 0
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
or ebx, eax
test cx, cx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -51
or edx, -128
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
cmovbe dx, ax
xor al, -113
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
or cx, dx
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
mul dl
bts bx, di
add cl, -23 # instrumentation
cmovno ebx, eax
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
xor al, 124
cmp dx, 58
movzx rsi, cx
add bl, bl
sub dl, 107
cmovl ecx, ebx
cmovnp edi, esi
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
xor esi, esi
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
cmovnb ax, bx
movsx si, bl
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
cmovs eax, esi
movzx ecx, ax
xor ax, -29507
cmovnle bx, bx
cmp rax, -1247892360
not sil
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
