.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 19
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rbx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rbx]
and rdi, -2
test rdi, -1876639003
add al, 118
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
sbb ax, -26881
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 42
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rbx]
or edi, 79
add bl, bl
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
and dil, dil
sub esi, 46
or dl, dl
cmovnle rbx, rdi
and rsi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
adc bx, -89
cmovnbe rdx, rax
and rdi, -2
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edi
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], di
test rcx, -2118888343
adc al, sil
test edi, -1249897727
movzx ecx, dl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], si
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
cmp cl, cl
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
