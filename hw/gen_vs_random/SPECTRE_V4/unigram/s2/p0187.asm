.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdi]
bt esi, edi
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
cmovb bx, cx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 42
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
mov al, dl
add al, -109 # instrumentation
cmovns ax, dx
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rax
bt rcx, rdi
movsx rax, dx
add cl, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
xor al, -40
sub edx, -122
cmp rbx, -91
sub rdi, 105
cmovno eax, edx
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ecx
bt cx, 31
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 88
xor esi, 66
cmovbe ecx, ecx
cmovl si, si
xchg al, al
imul si
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
xor si, -73
adc bl, al
cmovle rax, rdx
adc rax, rbx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -14
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rax, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rax]
cmp bl, 12
and rsi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rsi]
or si, -84
cmovno rbx, rdi
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
mov al, al
or bx, -33
cmp dil, 101
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
