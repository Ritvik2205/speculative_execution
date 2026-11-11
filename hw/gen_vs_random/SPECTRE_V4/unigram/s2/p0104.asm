.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 121 # instrumentation
movsx esi, di
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
mov al, al
add dl, 77 # instrumentation
cmovno dx, cx
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
xchg eax, edi
add ebx, edi
mov rcx, 1
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rax
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdi
and eax, -1145483375
xor rcx, -111
and rdi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 1
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rbx]
imul bl
mov rcx, rdx
movsx di, bl
and sil, -84
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
adc cl, -4
adc dl, 35
sbb ecx, ebx
test rax, rsi
bt cx, 31
and rcx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
cmovnb rsi, rbx
dec cx
add al, -10 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], di
xor bl, 27
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
adc rax, 1873854064
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 28
bts ecx, ecx
add al, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
dec cx
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rbx
btr ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
