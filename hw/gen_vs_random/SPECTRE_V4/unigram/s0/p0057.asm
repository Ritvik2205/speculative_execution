.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, rcx
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
xchg rbx, rdx
add cl, 122 # instrumentation
cmovz rcx, rbx
add sil, sil
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], cx
and dl, cl
cmp dl, 100
adc bl, 89
cmp si, 83
mov cl, 1
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax]
sub edx, eax
add dl, 100 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rbx]
cmovle rax, rdx
cmovns dx, ax
cmovz eax, ebx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 8
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
add bl, 65 # instrumentation
cmovnp cx, ax
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdi
sbb bl, -94
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rcx], cx
adc rcx, rdi
imul dl
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
mul rbx
bt edi, edx
and rsi, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 48
and rdx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
sbb esi, 75
test edi, -1249897727
xor bl, al
cmp al, bl
adc cl, 40
cmovno ebx, edi
adc dil, 13
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 19
neg rdx
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
