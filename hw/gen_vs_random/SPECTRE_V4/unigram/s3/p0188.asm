.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 95
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
cmp si, 48
movzx si, sil
add dl, 41
sub esi, 41
xor al, bl
add bl, -115 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 66
mul ax
movzx edi, di
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
cmovb eax, edx
btc rdi, 167
xor si, ax
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
cmovle rax, rsi
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], di
and si, 68
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
imul esi, edx
sbb dil, sil
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
btc bx, dx
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
sbb cl, bl
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], cx
cmp al, dl
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
add al, al
and cl, 58
cmovnb ecx, edi
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
sub dil, sil
and rbx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rbx]
add dl, -114 # instrumentation
cmovl ax, bx
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
add bl, -32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
adc sil, dil
imul eax
cmovnle rdx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
