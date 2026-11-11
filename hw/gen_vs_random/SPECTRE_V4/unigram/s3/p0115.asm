.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edx
and sil, bl
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
and dx, ax
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 4
and rdi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rcx
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rbx
btc rax, 227
imul edi, edx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 67
or dil, -16
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rcx]
cmovbe rax, rbx
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
cmovnp dx, si
adc bl, -58
cmovnb ax, di
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 12
cmp rdi, rbx
mov eax, eax
test eax, 1947430392
cmovs eax, ecx
bt rdx, rcx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 38
bswap rax
and rdx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rdx]
dec cx
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
not edx
mov bl, sil
cmovs eax, esi
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
btc rsi, rax
not si
or edx, -83
inc ebx
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
adc si, -110
sub rbx, 101
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
