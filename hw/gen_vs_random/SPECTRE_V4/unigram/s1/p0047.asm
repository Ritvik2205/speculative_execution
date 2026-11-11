.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
mul dl
cmovs ecx, esi
cmovb rax, rdx
cmovnb ecx, esi
xor cl, -101
dec rcx
cmp dl, 73
and rsi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rsi], 15
cmovns bx, si
movzx rcx, al
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
add bl, 63 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
xor sil, al
adc cl, 45
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dil
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
not ax
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
add rsi, rbx
add cl, -37 # instrumentation
adc ecx, 56
test al, al
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
cmovp rsi, rdx
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
cmp rbx, 47
xor cx, si
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 7
sub edi, ecx
and rcx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rcx]
and cl, 58
and edx, 15
and rsi, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
add cl, -82 # instrumentation
sbb bx, si
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
add rcx, 31
add rdx, 80
sbb al, sil
and rdi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdi]
bts eax, eax
and rax, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rax]
cmp rcx, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
