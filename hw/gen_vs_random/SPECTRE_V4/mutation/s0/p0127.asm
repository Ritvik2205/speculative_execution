.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 7381
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
btr ecx, esi
btr dx, 209
and eax, -1056713114
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 38
xchg sil, dl
dec sil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -103
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
cmovo ax, bx
cmovo rax, rbx
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
and rax, 37
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
cmp dx, 58
and al, 82
imul bl
bt dx, 193
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
btr ebx, 156
imul esi
add al, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
imul rax, rdi, -89
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 41
xor eax, 308288205
movzx rsi, ax
adc bx, 52
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi], 49
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
cmovl di, cx
btr rdi, 61
xor ax, 30500
and dl, -11
movzx rax, cx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
xchg al, al
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
cmovbe cx, ax
add sil, bl
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
mov bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
