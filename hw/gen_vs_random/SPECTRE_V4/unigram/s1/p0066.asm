.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rbx]
inc esi
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 112
and dil, -120
xor ecx, 91
mov al, -114
inc rcx
cmovnle rdx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 28
cmovnp si, dx
test cl, -119
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 35
add edi, 86
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 4
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rax
xchg rax, rsi
and al, -12
or rdx, rcx
adc sil, 111
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdx
add al, cl
adc rsi, rbx
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
cmovnz rax, rbx
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx], 78
btc rax, 72
add cx, 21
inc eax
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
dec al
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
bt edx, 46
add cl, -20 # instrumentation
adc bl, dl
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], eax
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
sbb ebx, -54
cmovnb ebx, esi
and rdx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
