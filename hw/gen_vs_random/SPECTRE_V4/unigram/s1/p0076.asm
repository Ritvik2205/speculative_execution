.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], si
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
xor rdi, -72
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], cx
cmovno eax, esi
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 73
xchg dx, cx
and rbx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rbx]
cmovp rdx, rdi
add al, 17 # instrumentation
cmovnle ecx, edi
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 16
and al, sil
and rax, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and edi, -102
or di, 2
or bl, -99
cmovb rsi, rsi
or dil, 89
bts esi, ecx
xor dil, sil
and rbx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], edx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
and bl, -30
add al, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rdi
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 25202
cmovle ax, si
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
or dl, cl
cmovnb edi, eax
and rdx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 28
xchg di, si
adc rax, 1873854064
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 113
add bl, -59
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx], 35
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], cx
imul rbx, rdx
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], esi
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
