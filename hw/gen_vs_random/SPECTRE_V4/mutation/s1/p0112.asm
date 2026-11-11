.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -58 # instrumentation
cmovnz ebx, eax
cmovnb bx, bx
cmovz rdi, rbx
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
btc rcx, rcx
add cl, -32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
cmovnp eax, ebx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -3
cmovo rdi, rbx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
cmp edx, -95
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 4
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 99
xchg bl, cl
sbb bl, dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
cmovbe rcx, rsi
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
and dil, cl
or rdi, rdx
test dil, -58
sub rax, 1914398062
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
xor ebx, ecx
cmp rsi, 74
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
cmp dl, dl
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], eax
xchg di, bx
imul al
xor ax, 45
add ecx, 99
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
sub rdx, rsi
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
or dl, 71
and rax, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
