.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, dl
and dil, 96
and rcx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
cmp rsi, 36
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdx
adc bl, 89
bts rcx, rcx
xor rbx, rcx
cmovz eax, ebx
or ebx, esi
xchg ebx, edi
sbb rbx, rdi
cmovnbe rsi, rsi
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdx], esi
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 81
add al, 110 # instrumentation
movsx si, al
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], dx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dil
or ax, dx
bt ebx, eax
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 39
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rsi]
sbb al, sil
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 70
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
cmovb eax, ecx
cmp rsi, 4
imul dl
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 77
cmovz edx, eax
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdi
xchg edi, ecx
movzx esi, dil
cmp rax, -120490246
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
and sil, dl
and rbx, 110
mul edx
not ax
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, eax
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
