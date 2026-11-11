.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -58 # instrumentation
cmovnz ebx, eax
cmovnb bx, bx
cmovz rdi, rbx
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
btc rcx, rcx
add cl, -32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
cmovnp eax, ebx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -9
cmovo rdi, rbx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
cmp edx, 4
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 99
xchg bl, cl
sbb bl, dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
cmovbe rcx, rsi
or al, -83
or bl, -80
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], -31
mov bl, al
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
movsx cx, dil
mov rdi, rdi
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], -32
add al, -60 # instrumentation
cmovle rsi, rdx
mov sil, sil
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -25
and rcx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rcx]
test cl, 78
xor dl, al
inc sil
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
add rax, 1049076260
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 2
cmp rbx, -3
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
adc dil, 124
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
