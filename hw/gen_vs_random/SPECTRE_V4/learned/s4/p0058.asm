.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdi
add al, 122 # instrumentation
cmovns edx, ebx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
mov rbx, 9101099553822202722
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
add dl, sil
cmovnbe edi, eax
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], esi
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
add sil, dl
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
mov rsi, 73
sbb dl, dil
or bl, cl
add sil, dil
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], si
add al, dl
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
or ax, -15282
btr bx, dx
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rdi
inc rsi
adc bl, 89
mov rsi, rax
sub eax, -523763262
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rax]
cmovnp ecx, edx
and rcx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 59
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 9
neg sil
and eax, -24
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
mov rbx, 9101099553822202722
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rax]
xor al, 29
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 70
imul rcx, rdi
not cx
mov edi, -1544998000
sub dl, dl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 18
and rsi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rsi]
add eax, -1796699558
bt ebx, 228
sbb dl, bl
sub cl, sil
xor ax, 25554
and rax, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rax]
sub dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
