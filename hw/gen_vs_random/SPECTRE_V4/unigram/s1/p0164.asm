.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
add rdx, 9
bswap rbx
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rbx]
imul cl
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
or ax, 0b1000000000000000 # instrumentation
bsr bx, ax
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
sbb bl, -94
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
test bl, sil
xor rax, rbx
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], si
add rcx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 67
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rax
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], di
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 31
neg dil
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], si
sbb ecx, 9
add sil, 26
bts edx, 99
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 12
sub dl, bl
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
xor edx, edi
cmovle rdx, rbx
movzx dx, cl
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 30
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rsi
add rdx, 9
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
btc rsi, 225
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rcx
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
