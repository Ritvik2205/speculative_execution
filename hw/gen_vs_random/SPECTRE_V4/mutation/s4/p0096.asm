.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, cl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ecx
add edi, eax
not rbx
cmp bl, al
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -100
cmovnle rax, rdi
sub cl, 18
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -51
add rax, rcx
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
add dl, -8
cmovno esi, edi
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rbx]
xor rax, 944027678
sbb al, -39
cmp bl, al
sub eax, -1627558845
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
add cl, 101 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
test sil, 68
bt esi, edx
or dil, sil
sub eax, -529389957
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
mov cl, dl
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rsi
cmovnbe rsi, rdx
movzx esi, cx
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
xor dl, bl
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
xor ax, bx
or bl, bl
and rdi, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdi]
adc rcx, rax
or ecx, 17
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 90
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
movsx edx, bx
add sil, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
