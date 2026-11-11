.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, 88
sub bl, bl
imul dx
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
and cl, bl
add rax, rbx
mov edi, -1544998000
test rbx, 92
mov rdx, rax
add al, 123 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rax]
cmovnbe rdx, rdi
add edx, esi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
adc rbx, rsi
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
cmp dil, al
btr bx, ax
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
cmp cl, sil
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 40
add cl, -37 # instrumentation
adc ebx, 86
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
add cl, -37 # instrumentation
adc ecx, 92
adc bx, -89
cmovnp bx, bx
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 26
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
imul rbx, rdx, 16
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 14
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rax
movsx esi, ax
and cl, 58
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 78
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rax
and dl, sil
bts eax, 209
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
cmovz ebx, ebx
movzx rbx, dx
add rax, rbx
test edi, -1249897727
cmp dl, 53
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
