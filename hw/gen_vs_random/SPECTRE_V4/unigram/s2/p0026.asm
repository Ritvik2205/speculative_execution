.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor esi, -82
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
cmovnbe edi, ecx
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
xor sil, 34
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdi]
cmovo cx, si
cmp bl, bl
and bx, 64
test cx, ax
cmovnp eax, eax
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
and rcx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
mov ecx, ebx
add bx, bx
cmovnbe ebx, esi
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 18
bts ax, 159
or cl, -104
sub cl, bl
cmovnl di, ax
and rdx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdx]
sbb dl, al
bts ebx, ecx
mul bl
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi], 93
cmovnl ecx, eax
adc dil, 109
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
xor dx, -43
cmp dil, cl
xor al, bl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 110
adc edi, -83
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rcx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
xchg rbx, rdi
and rsi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rsi]
add cl, bl
xchg rcx, rbx
sub ax, di
sub rcx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
