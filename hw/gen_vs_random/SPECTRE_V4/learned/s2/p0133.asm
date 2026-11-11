.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, 32
movzx dx, dl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
movsx rsi, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
cmovnb ecx, eax
xor al, 102
btc rdx, 6
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rcx], si
test eax, 1561062795
xor al, 102
add dl, dl
and sil, -49
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 61
and rax, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rax]
not dl
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
sbb esi, 17
inc rsi
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdi]
imul bx
btc rbx, rdx
test eax, -558243208
adc dl, bl
and bx, 95
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
cmovnp si, ax
or ax, -15282
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 15
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
test rcx, -2118888343
cmovnbe rbx, rdx
xor eax, -164167056
mul rbx
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
add sil, 26
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
cmovs di, di
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], dx
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
bt rbx, 78
lea ecx, qword ptr [rcx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rax
add eax, -1796699558
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
