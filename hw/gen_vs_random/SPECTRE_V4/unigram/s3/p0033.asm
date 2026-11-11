.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -58
xor edx, 94
cmp rdx, rsi
xchg eax, eax
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 1
cmovnbe bx, ax
and cx, dx
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 97
sbb edi, eax
cmovnz ecx, eax
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ebx
and esi, edi
and rcx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 3
test edi, 2142010790
xor eax, 167244411
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -50
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], cx
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rsi
sbb cl, 12
btc rdi, rsi
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdx
mov sil, dl
cmovnbe rbx, rsi
not al
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 96
and rsi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rsi]
movzx edi, cl
and rax, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rax]
cmovs rdx, rbx
xor dil, 37
and sil, sil
cmovp ax, ax
inc cx
add rbx, 21
sub al, 96
cmovp rdi, rdi
add cl, 122 # instrumentation
cmovz cx, ax
bts esi, 18
adc al, -70
test sil, 68
xor dil, 117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
