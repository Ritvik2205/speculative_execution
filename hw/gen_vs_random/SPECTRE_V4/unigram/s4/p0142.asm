.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, -69
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
not bl
sub di, 9
cmovno ecx, esi
btr edx, 160
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 113
add dl, -91 # instrumentation
cmovl rsi, rsi
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rbx]
xor ebx, esi
bswap edx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], cl
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ecx
cmovnb eax, edi
sbb bl, 121
adc sil, 88
or dx, 0b1000000000000000 # instrumentation
bsr si, dx
cmovbe rax, rdi
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
movzx edi, cx
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 13
and dl, 124
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdx
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 6
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rsi], esi
sub al, 0
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
adc bl, -58
sub ecx, -107
cmovnz rbx, rdi
cmovnbe esi, ecx
btr rbx, rax
movsx ax, cl
and rcx, 29
imul ebx, edi, -24
adc rax, 2071185388
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], ax
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
mov rax, -4627568876460436527
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
adc esi, 15
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
