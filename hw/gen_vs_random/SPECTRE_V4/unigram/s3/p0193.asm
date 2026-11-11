.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -84
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edi
and rcx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 69
cmovz ecx, ecx
sub dl, bl
xchg bl, al
sub rdi, rax
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], cx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edi
adc bx, si
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 20
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
add cl, 111 # instrumentation
cmovnle ax, bx
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rdx
mul dil
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
cmovb eax, edi
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and rbx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], -1772009889
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 56
cmovnb bx, cx
imul rbx, rbx
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 49
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
imul sil
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 56
or dl, 71
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rbx
adc sil, bl
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx]
bt rcx, 236
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
bswap rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
