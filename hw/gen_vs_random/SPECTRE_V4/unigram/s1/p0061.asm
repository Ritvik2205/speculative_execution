.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
btc rcx, rax
xor dl, bl
and rbx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rbx
and dl, sil
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
adc sil, sil
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rcx
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 43
cmovnp si, ax
sub cl, dl
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], dx
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 80
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], eax
btr rbx, 6
cmovp rax, rcx
movzx esi, dx
sbb esi, 7
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
xor rcx, rdx
xor esi, -82
and rbx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rbx]
xor esi, eax
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
test sil, 1
add al, -7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
sub sil, bl
and rsi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rsi]
xor si, -73
bts rbx, 14
cmovnb ebx, esi
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
or ebx, eax
or eax, 1 # instrumentation
add al, 49 # instrumentation
adc al, dl
or cl, cl
imul rdi, rsi
mov al, sil
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
sub rax, 1914398062
and rbx, 19
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
and sil, sil
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 22
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
