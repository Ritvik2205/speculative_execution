.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rax, rsi
cmovz rax, rsi
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
sub rax, -701741274
or esi, 10
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx]
dec cl
add eax, esi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
add edx, edi
cmovnp eax, esi
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
neg ax
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
xor al, dil
sbb cl, -104
cmp rbx, 22
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edx
mov rdx, 77
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
xchg dil, cl
cmovnb eax, ecx
and rsi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdx]
imul sil
xor dl, 14
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 73
cmp cl, dil
sbb dil, 37
and al, sil
and rax, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
xchg al, al
and rax, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rax]
sbb di, -76
and rsi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rsi]
dec al
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 59
or ebx, ecx
xor sil, cl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 38
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
