.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
cmp dil, -124
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
movzx rdx, ax
add sil, 26
cmovb eax, ebx
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
imul rsi
add bl, -109 # instrumentation
sbb edx, 92
test edi, -1249897727
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 13
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
cmovnle eax, ecx
add bl, -71 # instrumentation
adc bl, dil
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
mov cl, dl
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
sub bl, 17
movzx rax, dil
add bl, -102 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
add rax, rsi
cmovnbe rdx, rdi
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 68
test al, cl
add dil, dil
or dil, sil
movzx edi, cl
movsx edi, bl
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
adc ebx, 117
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 63
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and al, cl
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
bts edx, 39
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
cmovnbe dx, di
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
add sil, 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
