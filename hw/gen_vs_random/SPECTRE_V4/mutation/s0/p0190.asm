.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], esi
bts cx, 158
xor esi, 66
sub bl, 56
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
add cl, -59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rsi
and al, 41
neg edx
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
xor bl, bl
test dx, cx
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
cmovp rax, rdx
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
cmp rax, 1097504565
test dl, al
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], 120
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
sub ax, 25338
btc rdx, 178
test dil, sil
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
sub cl, 18
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
add rax, -1121139858
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
xor dil, 37
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rax
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ecx
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
cmovl dx, dx
cmovp esi, esi
cmovo si, dx
or al, dl
cmovnl rsi, rax
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
sub al, al
or si, bx
cmp bl, al
mov rsi, rdi
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
