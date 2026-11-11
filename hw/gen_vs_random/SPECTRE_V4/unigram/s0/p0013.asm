.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 23
sub bl, al
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], dx
sub sil, sil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 29
cmp dl, 82
adc bl, al
mul rbx
and rcx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rcx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 59
and sil, dl
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rcx], esi
sbb rbx, 81
inc edi
movzx rbx, dx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
add rdx, rcx
add ax, -15653
sub ebx, eax
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rbx
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
inc esi
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 75
cmovnbe rdi, rbx
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
bt ebx, edx
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
cmp dl, al
mul ax
sbb rdi, 74
cmovnp si, bx
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
cmovle cx, cx
test edx, 573099753
movzx bx, dl
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
sub sil, -50
sbb di, -76
or cl, al
test sil, dl
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rsi
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
bswap esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
