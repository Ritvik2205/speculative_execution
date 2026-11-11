.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdx, rsi
adc sil, bl
cmp eax, -813838876
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], ecx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 57
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 38
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
bts rsi, rdi
adc ax, dx
cmp eax, 64
neg al
and rbx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 9
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
and bx, 52
movsx esi, dx
mov al, al
add dl, -55 # instrumentation
cmovnbe ebx, edx
sub bx, cx
cmovbe di, dx
adc ax, 29444
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], si
sub ax, 17434
add dl, 109
xchg ax, bx
sub dl, -16
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], eax
cmovnz eax, edi
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], bx
cmp al, -122
and cx, -117
and rdx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdx]
and rdi, 45
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
btc di, ax
and rdx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdx]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdx], eax
adc si, -110
mul rdx
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
sub dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
