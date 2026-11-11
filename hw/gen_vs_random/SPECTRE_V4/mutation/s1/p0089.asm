.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -55 # instrumentation
cmovnbe esi, edi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
or al, -90
bts bx, 42
add bl, 68 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
mov edx, esi
adc rcx, 57
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
and ebx, esi
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -51
mul ax
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
bt edi, 233
add dl, 81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
mov rbx, rdx
mul cl
sbb eax, 426996540
dec rdx
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rbx
adc bl, bl
cmp al, 105
bts di, si
test sil, dl
movzx si, cl
imul rcx, rsi, -43
btc edx, ebx
cmp dil, 53
mul si
movsx ax, bl
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], -59
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
bt ebx, ecx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
or al, al
or rdi, rax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -3
xor dil, 117
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 38
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -35
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
inc rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
