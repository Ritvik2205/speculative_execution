.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rdx
cmovle rdi, rsi
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
or eax, -1434249782
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
xor bl, 93
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
xor al, 29
xchg dx, cx
test ax, 23760
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
cmovp ax, bx
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
movsx ecx, dx
xor al, 69
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], ax
xor bl, dl
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
xor cl, bl
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
or dl, cl
or al, bl
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
sub sil, -36
cmovnle rbx, rbx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdi], dx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
mov rcx, 4219775168754920203
xor dil, cl
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
sub dl, dl
cmovl rdi, rax
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
and al, -127
bt ebx, 228
add bx, 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
