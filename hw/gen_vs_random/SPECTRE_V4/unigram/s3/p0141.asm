.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rbx]
test bl, bl
add dl, -8
cmovle rbx, rdx
test edi, edx
and rax, 37
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], esi
imul bl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -61
and rbx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
add cl, -119 # instrumentation
sbb esi, 8
btc edx, 165
mov cl, dil
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
mov eax, esi
cmovs cx, si
or al, bl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
cmp dl, cl
test si, 43
cmovnle ax, si
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
mul cx
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
btr ebx, 87
and rsi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rax
dec dx
or rsi, rsi
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi]
cmp rcx, rax
and rax, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
movzx rcx, cl
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], eax
or rax, rsi
adc ax, bx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], esi
sbb dl, dl
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
