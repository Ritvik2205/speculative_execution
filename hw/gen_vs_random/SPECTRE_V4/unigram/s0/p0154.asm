.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rsi]
adc cl, sil
or cx, 23
bt ax, dx
adc rdx, -90
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 120
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
cmovnl rbx, rcx
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
add eax, 953442933
or bl, bl
cmp cx, 0
test ax, -23852
and rdi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdi]
and al, dl
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
imul rax, rsi
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
movsx eax, dx
dec rax
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 100
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], sil
cmovno esi, edi
movzx edx, dl
cmovz bx, bx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
btc rsi, 77
or dl, dl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -23
cmovnp si, di
cmovo bx, ax
imul ax, si, 46
cmovbe ax, ax
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 24
cmovz bx, bx
sub esi, -10
mov dil, al
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
