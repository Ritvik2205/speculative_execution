.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
cmovnle rax, rdi
add bl, 102 # instrumentation
cmovnp esi, ebx
cmovnb bx, si
and rdi, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], sil
and al, -12
xor rsi, -102
sbb bl, -98
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], si
cmp rsi, 74
and rsi, 0b1111111111111 # instrumentation
xor bl, al
bswap rcx
movzx edi, dl
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
btc bx, 254
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 6
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -18
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dil
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
test esi, ecx
xor dl, dil
imul edx, edx
imul dl
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -122
cmovbe rcx, rdi
cmp rax, 2096656187
test eax, -251558852
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 33
or dx, 0b1000000000000000 # instrumentation
bsf di, dx
and rbx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], edi
and rdx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdx]
adc al, al
cmp bx, 113
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rbx
movsx bx, al
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rcx
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rdi
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
cmovs rdi, rcx
sbb bl, al
or bl, 80
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rax
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
