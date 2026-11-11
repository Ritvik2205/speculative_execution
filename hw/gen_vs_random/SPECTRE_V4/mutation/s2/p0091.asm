.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edx, bx
xor dl, bl
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
cmp bl, al
or ecx, 17
adc rcx, rax
add cl, 101 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
cmovnle rax, rdi
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 57
sub cl, -94
add dl, 109
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
not rbx
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
or bl, bl
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdi]
add rax, rcx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ecx
or dil, sil
add edi, eax
xor ax, bx
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
test sil, 68
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
bt esi, edx
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
sub eax, -638345541
xor bl, cl
mov cl, dl
add sil, -18
xor rax, 1049851782
cmovnbe rsi, rdx
sbb al, 54
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rsi
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
cmovno esi, edi
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rbx]
movzx esi, cx
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -125
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
cmp bl, al
sub eax, -865916088
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 123
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
