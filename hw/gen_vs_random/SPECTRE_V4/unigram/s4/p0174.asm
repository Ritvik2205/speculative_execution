.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
btc rbx, 52
adc sil, cl
and cx, -117
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
xchg rax, rbx
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rcx
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 1
cmovz di, ax
cmovbe rdx, rax
add ecx, 99
bswap rdi
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
bts bx, 42
add dl, bl
sub dx, -12
xor bl, -126
dec bx
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
test bl, dl
and rax, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
adc esi, 88
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rsi
test eax, 1947430392
cmovno rbx, rdx
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
sbb dil, sil
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdi
cmovno edi, edx
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rsi
and bx, 43
cmovbe bx, dx
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 76
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], ax
add bl, -43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rsi]
and dil, dil
and rax, 1072797615
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], ax
or ax, 27604
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
