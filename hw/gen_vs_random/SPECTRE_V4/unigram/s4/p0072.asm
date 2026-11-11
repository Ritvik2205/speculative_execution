.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, -99
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rsi
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edx
xchg rax, rcx
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
imul cl
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], 23
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
neg rdi
sbb ecx, 61
sbb edi, 65
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 92
sbb ebx, 5
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
add bl, -115 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 27
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
movzx esi, dl
xor dl, al
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
or bl, 71
mov bx, -31043
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], di
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], sil
and rbx, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rbx]
cmp al, dl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 28
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
cmovnbe ebx, ecx
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
sbb bl, 57
add ecx, 67
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
cmp dx, 75
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
xor si, 17
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 85
and rax, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rax]
imul rax, rdi
and rsi, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
and edx, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
