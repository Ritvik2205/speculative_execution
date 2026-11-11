.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ebx, 3
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
neg al
dec cl
inc ecx
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], di
xor esi, eax
mul rbx
cmp sil, 88
movzx rax, cl
add bl, 110 # instrumentation
movsx dx, bl
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
btc bx, 91
and di, 6
sub ebx, edi
not rbx
add dl, 12 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
bt ecx, eax
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
cmovle rax, rdi
and rdi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdi]
cmovnle ax, bx
add bl, -18 # instrumentation
mov rdx, rdi
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 33
cmovnle si, cx
cmovle rdx, rsi
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 27
cmovb esi, eax
add cl, dil
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
add dl, -75 # instrumentation
adc dl, 33
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 27
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 66
test bl, al
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
add dl, 41
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 30
xor ax, 28088
and al, -127
or ax, bx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
