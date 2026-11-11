.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 89
and cl, 126
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], esi
sbb cx, -114
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], 77
btc rbx, rax
movsx esi, dx
add al, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
cmovs ecx, edi
cmp sil, 113
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -115
adc ecx, 114
test esi, -222751961
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], -31
and rbx, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], bl
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], al
mul dil
add ax, 10655
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], cx
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rbx]
movsx di, cl
sbb al, -4
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rax]
xor di, 72
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
sbb bl, 121
test cl, -10
imul edx, eax, 27
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], si
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 78
btc ecx, eax
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi]
add cl, -62
add dl, -39 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
dec cx
adc dl, cl
mul dil
or sil, -47
xor rcx, rsi
cmovnb dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
