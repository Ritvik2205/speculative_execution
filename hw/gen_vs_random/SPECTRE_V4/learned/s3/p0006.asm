.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
cmovz edx, ecx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
bts esi, 241
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add cl, 106 # instrumentation
cmovnp rdi, rsi
dec rbx
btc dx, 119
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
not si
sbb al, -62
cmovnbe rcx, rcx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
sbb al, -101
cmovs rax, rdx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
add dl, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 7
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
bt ebx, edi
cmp al, 19
and al, -36
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
sbb cl, 19
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
add sil, 26
bt ebx, ecx
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 24
xchg edi, ecx
and rdi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
add dl, -99 # instrumentation
not ecx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
and bl, al
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
test eax, ebx
add dl, -94 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
imul esi, edi
sub al, cl
sbb eax, 1081973675
imul cl
or al, 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
