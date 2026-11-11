.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -47
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
mov dl, al
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edi
not rdi
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
or ax, -30990
or cl, 12
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
add bl, 54
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 13
adc dil, al
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
adc dil, -17
xchg ecx, ecx
btr esi, 227
cmp di, -8
and si, cx
xor al, 48
and rdi, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdi]
sbb dl, dl
add di, 13
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], si
test dl, 24
or dx, 86
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
add dl, -91 # instrumentation
cmovl rdx, rdx
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], edx
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 72
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 1
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -86
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
test cl, -52
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
not edx
mov eax, edx
bts rsi, rdi
and rdi, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdi]
and cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
