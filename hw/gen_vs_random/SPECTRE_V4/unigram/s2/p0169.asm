.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dil
adc al, dl
sbb dil, 36
adc sil, 111
and dil, dil
and rdi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdi]
sbb bl, 121
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rbx]
movsx rax, cx
cmp eax, edi
and ecx, 71
cmovs rdx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
add di, di
add dl, dl
cmovl cx, di
movzx edi, bx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], ax
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rbx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 3
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
or dil, bl
cmovnl cx, ax
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rdx
imul dx, cx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 95
neg dl
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
add bl, 127 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ebx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
cmovnle rdx, rdi
test si, 98
xor al, al
cmp eax, ecx
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 52
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
sub al, bl
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rax
bswap rsi
adc rbx, 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
