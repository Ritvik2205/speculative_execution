.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rax, rsi
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
adc di, -110
xor rsi, rbx
xor al, 69
adc al, sil
and rcx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], si
test rbx, 10
and ax, 35
inc ecx
mov ebx, edi
cmovz dx, dx
cmovnp ax, di
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
imul rdi
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and bl, al
add dl, 56 # instrumentation
cmovle rax, rdx
add bl, -21 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 72
sub bl, 17
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
test al, dl
and rcx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rcx]
adc eax, -79
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and rsi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], sil
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdi], eax
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
xor cl, -85
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
add dl, bl
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 82
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
imul rbx
adc edi, 19
adc sil, 66
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], di
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
