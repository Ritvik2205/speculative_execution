.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -89
movzx si, dl
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
xor ecx, edx
sbb ebx, 37
cmovnl rbx, rbx
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
imul eax
adc dl, cl
test al, 66
cmovnp rcx, rax
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
bswap ecx
test rdx, 32
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rsi]
or ebx, ecx
bt ecx, edx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
add cl, 8 # instrumentation
adc dl, al
and cl, 58
and ecx, 28
mov rdi, rbx
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], ax
bts eax, 209
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
cmp rdi, 96
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
test edx, 573099753
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], eax
mov rax, -8696242625349627833
sbb dl, -99
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edi
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
or di, ax
sub dil, dil
cmovnb eax, esi
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 23
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 28
add eax, ebx
sub edx, eax
sub rdx, 22
cmovz eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
