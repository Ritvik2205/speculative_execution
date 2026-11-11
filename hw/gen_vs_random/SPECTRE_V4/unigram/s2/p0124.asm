.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rcx
cmovnp rbx, rdx
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 50
mul rbx
and rcx, -102
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rbx
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add al, 118
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
xor bl, 93
add rdx, 40
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 78
and rdx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 11
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 18
add cl, cl
add dl, 41
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 73
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 24
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rcx
imul bx, di, 1
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], esi
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
bts eax, esi
cmovnb eax, ecx
movzx rdx, cl
add al, 5
movzx rdx, si
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rax
add dl, 100 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 63
add dl, al
add al, -32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
xchg ax, bx
imul sil
add edx, 32
movzx eax, dl
sbb eax, 2051746726
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
