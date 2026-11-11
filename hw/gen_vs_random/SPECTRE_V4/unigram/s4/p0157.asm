.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz bx, dx
and rax, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 22
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 29
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
add al, al
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
add dl, 31 # instrumentation
cmovnl bx, bx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], esi
mul rbx
xor eax, -164167056
test rdx, 17
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 1
xor eax, edi
and cl, 58
test eax, 1561062795
add bl, bl
add bl, -115 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 57
and bl, al
or edi, 33
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
sub cl, dl
and rcx, -102
test eax, -818909344
btc rax, 52
sub al, al
and rdx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdx]
or ax, bx
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
sub sil, -36
movzx ebx, dl
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
bt di, 53
bts rdx, 52
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 14
sub sil, -36
test cl, dl
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 62
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdi
sub bl, 17
and rcx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 5
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
add dl, -39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
