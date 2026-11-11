.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub eax, -1804712207
xor bl, cl
cmovno esi, edi
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
xor rax, -117
sbb al, -39
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rsi
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -125
mov cl, dl
and rbx, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rbx]
adc rcx, rax
movzx esi, cx
or bl, bl
add edi, eax
add rax, rcx
movsx edx, bx
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
cmp bl, al
bt esi, edx
add cl, 101 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 123
test sil, 1
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
sub cl, 78
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
sub eax, -638345541
cmp bl, al
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
or dil, sil
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
or ecx, 17
xor dl, bl
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdi]
add sil, 3
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
cmovnle rax, rdi
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 90
cmovnbe rsi, rdx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ecx
xor ax, bx
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
not rbx
add dl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
