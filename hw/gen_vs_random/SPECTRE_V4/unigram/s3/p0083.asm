.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap rax
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], cx
add bl, -72
and rsi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rsi]
and rcx, -102
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
cmovo rdx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
not bx
adc dil, 94
and sil, bl
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
imul cl
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
sub ebx, 85
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 60
and rbx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 121
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 76
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
test dil, sil
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
test bl, 0
bts rdx, 61
and esi, 55
cmp dil, al
and edi, 96
adc al, dl
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
neg dil
cmovnbe rdx, rbx
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 15
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
cmovnb ebx, eax
mul rbx
add esi, -5
movzx rax, bl
sub rcx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
