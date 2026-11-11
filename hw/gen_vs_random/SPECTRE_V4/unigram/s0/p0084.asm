.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdx]
or dil, dl
or edi, ebx
xor cx, si
sbb ecx, 61
btc dx, ax
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
btc si, 26
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], si
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 38
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
btr rax, rdi
sbb sil, dl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 41
neg rdx
test edx, edi
and rax, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rax]
mul rbx
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], di
add bl, -102 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and cx, 17
and rsi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rsi]
movsx esi, ax
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
btc rax, 88
movzx eax, dil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
sub sil, sil
imul edx, edi, 93
add si, 4
cmovnp rax, rcx
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
neg esi
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
movzx edx, dl
cmp rax, 2115020203
and rax, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rax]
movzx di, dl
movzx edi, di
cmp sil, bl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
add cl, 97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 66
neg rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
