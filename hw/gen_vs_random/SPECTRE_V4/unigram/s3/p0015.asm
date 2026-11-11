.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rsi]
imul dl
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], ax
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 6
and rdx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdx]
adc rcx, 57
add dil, cl
and dl, dl
cmovz ebx, esi
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
bt rsi, rbx
and sil, -84
and rcx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rcx]
or rax, rdx
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
cmovns bx, cx
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
bts di, bx
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], -107
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rax
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
adc dil, dl
add dx, 95
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
cmovnb cx, si
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
dec dx
dec cl
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 31
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
bts rdi, rax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 76
add bl, 69 # instrumentation
cmovnbe dx, ax
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rsi
and rdx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ebx
add al, 89 # instrumentation
cmovnle si, dx
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
xor al, dl
and rax, 1072797615
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rdi
btc ebx, edx
or di, 0b1000000000000000 # instrumentation
bsf cx, di
xchg ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
