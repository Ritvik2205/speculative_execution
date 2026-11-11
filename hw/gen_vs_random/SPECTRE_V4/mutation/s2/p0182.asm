.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -84 # instrumentation
cmovb dx, si
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dil
bt rcx, 189
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
sub al, 86
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 74
xor edi, 127
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 0
sub si, si
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
or di, 0b1000000000000000 # instrumentation
bsf si, di
and rcx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
mov dl, dl
and rdi, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -77
sub dl, -16
or eax, ebx
btc rdi, rdx
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
