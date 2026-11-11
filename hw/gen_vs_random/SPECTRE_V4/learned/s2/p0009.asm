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
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
or eax, -1434249782
add cl, cl
dec rdi
add bl, -72
or bl, cl
cmovle edx, esi
or al, dil
imul ax
adc rdi, rdx
cmovnle si, dx
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
adc al, dl
cmovnl si, ax
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
adc dx, 46
cmp cl, 82
sbb bl, bl
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
cmovnl rax, rax
movzx ecx, sil
test esi, 17
cmovnp ebx, eax
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
add bl, -10 # instrumentation
cmovnbe ebx, ecx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edi
mov rdi, rcx
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ebx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
and rax, 39
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
test al, bl
movzx rsi, ax
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
movsx rsi, di
add rdi, rsi
xor eax, -164167056
cmp cl, cl
sub rdi, 10
movzx edx, al
add eax, -1796699558
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
or bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
