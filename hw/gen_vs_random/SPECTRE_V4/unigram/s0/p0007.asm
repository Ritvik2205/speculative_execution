.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
movsx edx, sil
adc al, dl
and rsi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rsi]
bswap edx
movsx cx, sil
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], ax
cmp dl, 83
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
add bl, -84 # instrumentation
cmovb dx, ax
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx], 69
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rcx], cx
inc edx
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
mov edx, eax
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], bx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -117
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 98
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rcx
sub al, 59
and rax, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 43
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 93
cmp edx, -95
adc ecx, 114
cmovs ecx, edx
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rcx
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
adc cl, cl
mov al, al
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
sub ecx, -107
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
mov cl, sil
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdi
and rax, 37
cmovnbe edx, esi
and eax, -1572488789
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 83
add al, cl
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
