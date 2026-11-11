.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg sil, sil
neg ax
and rcx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 98
btc rcx, rax
or sil, sil
and rsi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rsi]
add dl, -55 # instrumentation
cmovnbe eax, edi
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], -89
or ax, 28571
add bl, -59
and rcx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rcx]
mov al, dil
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 87
or cl, 12
and rcx, -20
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], dx
and rbx, 26
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rsi]
test al, 72
xchg sil, sil
and dl, bl
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rcx]
sub bl, 66
cmovnle ax, bx
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
adc al, -86
bts rdx, 4
neg al
sub sil, bl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
not dx
inc bl
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
sbb dl, 75
add dl, -25 # instrumentation
cmovs rcx, rdi
cmovs rax, rdx
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
sbb dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rcx]
cmp rbx, rdx
inc dl
xor cl, sil
or di, 0b1000000000000000 # instrumentation
bsr ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
