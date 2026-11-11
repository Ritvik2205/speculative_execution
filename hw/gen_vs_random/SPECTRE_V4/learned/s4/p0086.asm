.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add al, 72 # instrumentation
cmovle ax, dx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
mul ax
sbb rsi, -115
adc ebx, 117
xor al, 59
mul ax
btc ax, dx
xor edi, 99
cmovle dx, ax
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], esi
cmovp ebx, esi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
adc ecx, -12
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
and bl, 26
sbb rax, 183833426
cmp al, 19
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
or rax, 35
and dl, al
cmovnbe ebx, eax
cmovnbe rbx, rax
adc al, al
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
or sil, 35
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
cmp dl, cl
and bx, di
cmovle cx, si
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
xor esi, ecx
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
mov edi, -1544998000
cmovns rbx, rsi
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdi
cmovl rdi, rsi
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
