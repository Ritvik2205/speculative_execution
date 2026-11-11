.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 68
sbb rax, 59
imul edx
and rbx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rbx]
movzx di, dl
cmp rbx, -66
neg rdi
and rsi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rsi]
cmovnp ebx, ecx
xor eax, eax
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -12
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
bt si, ax
and rdx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 25202
mov bl, al
neg di
cmovnb ebx, edx
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
cmovns di, ax
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
adc dl, bl
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi]
sub esi, edi
sub rcx, 126
btc edi, ecx
cmovnb eax, edi
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], edi
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
cmovo ebx, eax
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
or bl, cl
add cl, -62
add rdx, rsi
sbb cx, 29
add bl, bl
btr rdi, 61
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 4
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], bx
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
cmp si, 109
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], -20642
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
