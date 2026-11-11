.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
cmovnz rsi, rbx
add dl, -58 # instrumentation
xchg ax, di
add cl, -50 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
btc rcx, rbx
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ecx
cmovnp eax, edx
or ebx, 1 # instrumentation
add al, 49 # instrumentation
adc bl, dl
btr si, 108
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edx
cmovp rax, rsi
sbb cl, -69
dec al
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rax
imul rdx, rdx, 44
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdi]
movzx rbx, di
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 73
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
cmp bl, 12
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], di
xor dl, al
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rcx
dec bl
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], cl
sub rcx, 126
add al, -7 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
movsx cx, cl
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
add al, 27 # instrumentation
mov dil, sil
bts di, 72
xchg edx, ebx
add edx, 89
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
adc bl, bl
xor si, di
xchg ax, ax
add al, 58 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 15
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
