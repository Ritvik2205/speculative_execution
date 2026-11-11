.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rsi, rdx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 112
xor edi, 127
and bl, -60
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -61
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
add sil, 71 # instrumentation
cmovnle rdx, rsi
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
adc rsi, 82
cmovnz rcx, rbx
cmp edi, ebx
xchg bx, dx
adc dl, 61
btc edi, 125
adc al, sil
movzx esi, dil
sub al, sil
test cl, 78
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
movsx dx, bl
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
cmp ebx, -19
and rax, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rax]
and di, -34
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
imul eax, ebx
neg dil
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx], 83
xor ebx, -62
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rcx]
and dil, -120
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], edi
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 91
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
adc dx, bx
and rax, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rax]
cmp eax, edi
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
