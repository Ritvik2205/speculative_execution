.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rax, 2
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdx
movzx edx, bl
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
sub sil, -36
adc cl, sil
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdi], eax
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
bt ebx, 228
not ecx
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 36
mul esi
cmovz dx, dx
cmovo di, cx
test edx, 573099753
cmovnle esi, edx
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
movzx bx, sil
and sil, dl
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
add al, -117 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 91
cmovz edi, eax
xor al, dl
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
test edi, -1249897727
cmovnl rax, rdx
movzx rdi, si
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
cmovz eax, edx
mov rbx, 9101099553822202722
add rdi, 105
cmovnbe bx, ax
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], esi
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
or cl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
sbb al, 32
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
btc rcx, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
