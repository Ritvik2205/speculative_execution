.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -84 # instrumentation
cmovb dx, si
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dil
bt rcx, 236
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
movsx ebx, cx
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
or rdx, 1
cmovbe rsi, rcx
btr si, dx
btr bx, 42
adc bl, al
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rdi
imul bl
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
mul al
btr rbx, rdi
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
cmovnz eax, edi
cmovnp eax, edi
movsx cx, dil
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdx
sub al, 11
cmp al, -53
bts di, si
test sil, dl
movzx si, cl
imul rcx, rsi, -43
btc edx, ebx
cmp dil, 53
mul si
movsx ax, bl
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], -59
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
bt ebx, ecx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
or al, al
or rdi, rax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -3
xor dil, -23
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 38
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -35
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
inc rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
