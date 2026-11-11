.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 8 # instrumentation
adc al, dil
test bx, -1599
sub bl, al
cmovnp rdx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
adc bl, 89
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
add al, 5
cmovnle edi, eax
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
add rdi, 105
adc eax, -1513455903
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
cmp sil, 88
cmovnp si, di
test dl, bl
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
and rbx, 110
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
cmovnbe rax, rcx
add dil, 82
cmovnle eax, edi
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
cmovle cx, bx
cmovz rcx, rdx
adc bl, dl
and sil, al
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
xor eax, -437098167
neg sil
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
add dx, -90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
