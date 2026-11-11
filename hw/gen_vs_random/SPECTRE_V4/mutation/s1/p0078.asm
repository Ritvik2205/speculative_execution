.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
adc rdx, rcx
cmp cl, dl
and rcx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rcx]
imul cx, ax
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -1
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
mov rdi, rdx
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
imul rcx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 67
sub dil, -11
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
sbb al, dil
sbb bl, bl
and rsi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rsi]
adc bl, bl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 69
movzx edi, sil
sub bl, bl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and eax, -1555813586
and rdi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdi]
inc cl
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
adc al, dl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
or di, 2
imul esi, esi, 60
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
cmp al, 75
or cl, -55
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 4
xor rsi, -3
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add bl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
sub cl, cl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 1
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
add cl, -77 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rsi
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
