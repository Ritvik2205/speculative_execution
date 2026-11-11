.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
cmovz edx, ecx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
bts esi, 241
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add cl, 106 # instrumentation
cmovnp rdi, rsi
dec rbx
btc dx, 16
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
not si
sbb al, 123
cmovnbe rcx, rcx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
sbb al, -101
cmovs rax, rdx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
add dl, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 7
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
bt ebx, edi
cmp al, -23
and al, -127
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
sbb cl, 20
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rsi
add sil, 26
sub dl, al
add rax, 39
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
xchg rsi, rbx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 30
add dl, -99 # instrumentation
not eax
sbb bl, -94
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
imul cl
test bl, 24
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 60
and rdi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdi]
xor al, 102
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
mov edi, -1544998000
sub dl, dl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], di
and dil, dl
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
inc edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
