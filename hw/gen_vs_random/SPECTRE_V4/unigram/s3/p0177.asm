.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rcx, -61
add al, 32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rax]
neg esi
cmovp rbx, rcx
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], edx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dil
sub al, 86
imul esi, ecx
bswap ecx
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdi]
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
dec al
xor ebx, -62
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
cmp sil, dl
and bl, -30
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 24
and rcx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 43
xor edx, 62
and rax, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx], -117
add dl, -85 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and dil, cl
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
mov dil, 78
xor rbx, rcx
bts si, cx
sbb al, bl
test bl, -16
add bl, -38
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
add cl, -121 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rbx], eax
sbb edi, -94
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdi
cmovnb rax, rcx
xchg rdi, rsi
cmp rax, 40
and sil, -84
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 38
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
