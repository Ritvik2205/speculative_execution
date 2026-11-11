.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 41
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
bt esi, 227
cmp eax, -92285311
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
add ax, 28666
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
adc di, -110
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
adc sil, bl
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and cl, 58
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rax
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edx
adc ebx, 117
cmp eax, -92285311
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rsi
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
adc bl, cl
and rax, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rax]
add sil, dl
cmovo edx, eax
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rbx
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
cmp bl, sil
add bx, 110
add dil, cl
cmovnbe rcx, rdx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, -10 # instrumentation
mov dx, 64
bts rbx, 53
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 25
cmp cl, bl
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
and cl, dl
sbb dl, -99
or bl, 37
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
btc rax, 37
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 41
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
