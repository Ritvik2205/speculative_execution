.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz ax, bx
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], ecx
sub rdx, 60
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rdx], si
sub dl, dl
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
add al, -55
cmp sil, al
sbb sil, -124
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx]
cmovnp ebx, eax
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rbx]
xor cl, al
cmovno rcx, rdi
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
adc ax, 17267
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
xor ebx, -62
sub cl, 18
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
cmovle rsi, rbx
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
xor bl, dl
or rsi, 73
and rdx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rdx]
or cx, 59
cmp eax, 64
xchg ecx, eax
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di
xor rdx, 106
cmp bl, -79
cmovbe dx, bx
mov ebx, eax
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], -2
and rsi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rsi], 80
xor ax, 20236
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdi]
test cl, cl
mul rdx
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 98
sbb dl, 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
