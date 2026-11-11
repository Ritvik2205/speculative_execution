.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
adc eax, -39
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add edi, 11
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
cmp al, -52
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 95
sbb dl, bl
cmp dil, -124
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
sbb bl, 57
test cx, 21
and rdi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
not ecx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 26
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi]
adc bx, -89
and rdi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdi]
test rax, -331426050
and dl, al
cmovnb rdx, rax
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rdi, -2
cmovnp ecx, eax
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
cmovnb si, si
test bl, dil
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
mov rdx, rdi
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edx
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdi], bx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
btr rax, rdi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
sub sil, -50
xor dil, sil
mov edi, -1544998000
imul rsi
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
movzx edx, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
