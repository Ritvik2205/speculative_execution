.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dl, 95
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], ecx
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 51
cmovnb dx, cx
add bl, -13 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
btc rdx, 178
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
bts eax, 51
adc cl, -85
and cx, -117
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
add al, al
cmp cx, 0
bts eax, 13
add dl, -12 # instrumentation
cmovp eax, edx
sub bl, al
cmovbe bx, dx
adc al, cl
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 6
and rdi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], ecx
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and rsi, 0
test sil, 68
cmp al, cl
bts dx, 26
and rcx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], si
and rax, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rax]
and dil, bl
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], esi
mov eax, edx
movzx edi, cx
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rcx
xchg edi, ebx
add cl, 31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], bx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], 70
sbb si, 16
mov dl, 81
xor al, -66
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
xor cx, -80
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -21
cmovb bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
