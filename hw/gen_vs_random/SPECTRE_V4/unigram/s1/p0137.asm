.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, al
and rcx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rcx]
adc dl, cl
sub bl, -98
inc dil
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
neg esi
sub ebx, 42
and dil, dl
cmovnle cx, ax
movzx si, al
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
adc ecx, 114
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 79
btc di, si
adc cl, dil
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 5
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi]
sub dl, sil
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
imul ecx, edi, 43
xor bx, 59
adc dl, dil
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rdx
or al, -47
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
and rax, 0b1111111111111 # instrumentation
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
mov eax, -1056201206
test dx, dx
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rsi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
add dil, -84
cmovl rsi, rcx
add cl, -33 # instrumentation
not bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 2
and rdi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
and eax, -1555813586
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], ecx
and al, 41
movzx eax, al
bts ebx, eax
or rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
