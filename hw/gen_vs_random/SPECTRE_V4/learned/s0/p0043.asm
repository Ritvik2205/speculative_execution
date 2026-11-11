.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp cx, si
cmovnb esi, edx
and sil, dl
sbb dl, bl
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
add rcx, rsi
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 39
cmp sil, dl
add rdx, rbx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
adc bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
cmovle esi, edx
cmovz si, dx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
not si
cmovnb esi, eax
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
bt cx, 111
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
btc ax, si
and rcx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rcx]
cmp al, dl
test cl, sil
test bl, bl
dec rdx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdi
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rbx], cx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
movsx rsi, dx
sbb rax, 183833426
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
sub al, 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
