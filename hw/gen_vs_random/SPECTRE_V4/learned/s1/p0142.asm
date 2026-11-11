.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
test dl, 19
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
bts si, 30
and rcx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rcx]
movzx ax, al
imul di, dx
bts esi, eax
cmovnz dx, ax
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
sbb ax, -19255
mov si, 33
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 30
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
xor si, cx
test dl, dil
cmovns ax, ax
cmovs ecx, edi
cmovo rcx, rcx
add cx, cx
sbb ebx, esi
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
sbb dl, -99
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
adc dl, cl
cmovnle eax, edi
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
xor cl, al
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
imul eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
xor cl, bl
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
cmovnbe rbx, rcx
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdi
mov si, di
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 25
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dil
sub dl, dl
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
or cl, sil
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
