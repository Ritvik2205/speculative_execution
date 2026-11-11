.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub eax, -494922880
xor bl, cl
cmovno esi, edi
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
xor rax, 93
sbb al, -52
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rsi
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 121
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
cmp qword ptr [r14 + rcx], -100
test sil, 1
add cl, 35 # instrumentation
cmovnb rdx, rdi
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
btr rsi, 20
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 4
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
cmovle rbx, rdx
adc al, -86
test cl, -31
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rcx], di
add cl, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], eax
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
test bl, cl
add cl, dl
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 5
cmp rbx, -91
and rax, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rax], ax
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
