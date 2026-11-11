.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 85
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdi
add rcx, 40
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
add ebx, eax
not di
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
imul eax, edi
movsx eax, si
mov bl, bl
cmovb eax, esi
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 50
xor al, 102
cmovnbe bx, ax
cmovb bx, bx
and rcx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
xor sil, 56
add al, 118
sub cl, cl
test eax, -544019457
bt si, 12
and rsi, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
sub cl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
cmovnp rsi, rcx
add cx, cx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 32
sbb edi, 36
and rdx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdx]
xor di, bx
add cl, 122 # instrumentation
cmovz rdi, rbx
xor cl, -85
add edx, 74
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 98
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rsi
xor cl, bl
cmovnb eax, edx
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
or dl, 56
add bx, 110
and rax, 92
imul rbx
test bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
