.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg edx
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
movzx si, dl
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi]
adc dl, bl
xchg edx, eax
cmovz edx, eax
add ax, -13169
xor dil, bl
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
imul rbx, rcx
dec rsi
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 21
adc cl, dl
cmovnbe rax, rdx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
add dl, dl
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
not sil
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
cmovb esi, ebx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rbx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdx
not rbx
imul bl
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 33
sub dil, dil
movzx cx, sil
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
cmovnbe ecx, edi
cmovns di, bx
sub dil, -10
cmovnl rcx, rcx
adc rax, rbx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 41
cmovns ax, dx
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
test edx, 573099753
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 46
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
test ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
