.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 127
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 4
and cl, al
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
sub sil, sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
add bl, 54
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 93
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
cmp dil, 101
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -127
btr eax, 10
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
cmovnz rax, rdi
cmp dil, al
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
cmovbe bx, ax
bswap edx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 25738
or dx, 0b1000000000000000 # instrumentation
bsr cx, dx
add rdx, 97
add al, -71 # instrumentation
cmovb rdi, rax
cmp bl, -16
sub bl, cl
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
adc esi, 12
and rdx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rdx]
sub cx, -114
neg al
adc al, dl
or rsi, rcx
mul sil
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
cmovs rdi, rdi
and rdx, 0b1111111111111 # instrumentation
movzx rdx, byte ptr [r14 + rdx]
btc ecx, edx
add al, dil
mov bl, sil
test rsi, rcx
and rcx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
