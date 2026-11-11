.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dl, sil
imul cl
xor dl, 19
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rax]
test dl, sil
sub cl, 116
add dx, -90
add cx, 66
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 57
bts eax, 209
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 92
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
add dl, -99 # instrumentation
not eax
cmovle rsi, rbx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 45
mov al, 47
mov rdi, 49
cmovnbe si, di
cmovnle ebx, esi
add rdx, rcx
or sil, dil
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 47
test dil, cl
cmovp rdi, rcx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 12
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
xor rbx, rdx
add bl, -72
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], eax
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
movzx ebx, bx
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], -20
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
dec cl
and rdi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdi]
cmp bx, 42
add cl, 106 # instrumentation
cmovnp rbx, rax
adc esi, 90
imul eax
or al, dil
cmovnle ebx, esi
btc rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
