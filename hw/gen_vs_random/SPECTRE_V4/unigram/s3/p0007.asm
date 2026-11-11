.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
xor sil, sil
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], bx
bswap rcx
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
cmovnp si, bx
cmovbe di, si
cmovbe edi, eax
add eax, edx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], dx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
mov ecx, -405458789
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], cx
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], al
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], -39
cmovo esi, edx
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
adc sil, -112
adc ebx, -55
xchg edx, esi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], bx
btr ax, ax
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 30
cmp al, 115
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
bts bx, ax
and dl, -11
and rcx, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rcx]
or ax, cx
xor di, 61
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 5
mul rdx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], -84
test eax, -651442446
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
