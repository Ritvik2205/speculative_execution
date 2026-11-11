.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 106 # instrumentation
cmovnp rsi, rcx
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 53
and rsi, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rsi]
movsx eax, si
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 32
xor rax, rbx
cmovnl si, di
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 22
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 63
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
sbb ax, -26881
xor dl, 94
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
or dil, 55
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 33
sub cl, 116
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ebx
add bl, -72
sbb al, cl
btc di, dx
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 97
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 68
sub dl, 43
add esi, -5
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 77
and dx, 1
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and esi, 55
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
test dl, 19
mov bx, -31043
add ax, ax
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
test di, ax
bts edi, 167
mul esi
add dil, 72 # instrumentation
cmovle di, si
cmp rdx, 82
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
sbb cl, sil
bts eax, 209
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
