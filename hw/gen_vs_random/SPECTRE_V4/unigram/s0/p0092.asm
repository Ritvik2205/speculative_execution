.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe cx, ax
cmovnp eax, eax
movsx edi, bl
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 90
not dx
and rsi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rcx]
btc rdx, rdi
cmovo rsi, rdx
add bl, bl
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 75
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 3
movzx ecx, cl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
test esi, 3
movzx edx, dx
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rbx
test rbx, 26
adc dil, cl
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
xor cl, -101
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 48
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 35
movzx rdi, si
xor sil, 56
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 41
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rsi], eax
bts edi, 167
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
or dl, al
add cl, -21 # instrumentation
adc rsi, 55
cmovnp dx, di
add si, 4
test rdi, -1876639003
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
