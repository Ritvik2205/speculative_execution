.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
dec rcx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
add al, sil
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdx]
btc di, 78
xor di, ax
imul esi, ebx, 1
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rax
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
test sil, bl
sbb dl, -99
or bl, dil
sub dl, bl
or ax, -12775
bswap rbx
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and dl, al
test rdi, -1876639003
adc bx, -89
or al, 95
cmp bx, 45
and rcx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
bt esi, ecx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rbx]
bt eax, ecx
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
sbb cl, -104
or bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
