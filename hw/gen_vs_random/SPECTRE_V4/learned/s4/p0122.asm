.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
cmovb edi, ebx
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
inc al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
cmovs dx, di
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
mov al, dl
sub al, 98
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
sbb bl, 57
cmovns bx, di
mov rcx, 4219775168754920203
sub al, dl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
xchg rdx, rbx
or sil, 29
sbb cl, 19
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
or dl, sil
or cl, dil
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
add edx, 40
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ecx
add dl, 48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
xor sil, dil
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 97
and rsi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rsi], 73
cmovnz eax, ebx
test rcx, -2118888343
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ecx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
add dil, 16
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 55
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rsi
sub al, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
