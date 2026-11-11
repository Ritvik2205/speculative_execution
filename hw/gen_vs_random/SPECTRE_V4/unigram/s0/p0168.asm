.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, -114
sbb ecx, 10
sbb al, dl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rcx
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
imul cx, dx, 98
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 30
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
add bl, -52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rbx]
cmovno ebx, edx
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
add dl, -82
cmovnb esi, edi
test sil, 68
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 19
and rbx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rbx]
cmp sil, al
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
imul dl
sbb dl, -62
btc rsi, 36
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 88
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rsi], cx
movzx edx, al
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edi
add dl, -8
add dl, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
test eax, 1600638830
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 33
cmp al, -44
not dl
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
or sil, sil
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rcx
adc al, al
cmovb dx, bx
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
sbb sil, -11
xchg al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
